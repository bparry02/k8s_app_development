k8s_app_development.deploy_key_secret
=========

A simple role to create a kubernetes secret from an SSH private key file.
Used to easily and repeatedly configure a namespace with a secret that
can allow SSH authentication, e.g. to a git server (GitHub, GitLab).

Requirements
------------

A valid kubernetes context and authenticated session is required by this role.

Role Variables
--------------

* deploy_key_filename - the local filename of the private SSH key file.
Fully-qualified path or relative to the ansible playbook directory.
* deploy_key_secret_namespace - namespace for the secret object.
* deploy_key_secret_name - name for the secret object.

Example Playbook
----------------

Example playbook showing just the role invocation
(logging in to kubernetes happens before this playbook).

    - hosts: localhost
      tasks:
        - name: "Add deploy key to current k8s namespace"
          include_role:
            name: deploy_key_secret
          vars:
            deploy_key_filename: /home/myuser/.ssh/my-deploy-key
