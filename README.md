# Ansible Collection - bparry02.k8s_app_development

## Roles

* [deploy_key_secret](roles/deploy_key_secret/README.md) -
A simple role to create a kubernetes secret from an SSH private key file.

## Testing

1. Prepare virtual environment

```
python3 -m venv .
source bin/activate
pip3 install --upgrade pip setuptools pip-tools

pip install -r requirements.txt
```
2. Run molecule via make to set correct python interpreter

```
make test
```

## Development

1. Updating python dependencies:

```
source bin/activate
pip3 install --upgrade pip setuptools pip-tools
pip-compile --upgrade --generate-hashes --output-file requirements.txt requirements.in
pip3 install --upgrade -r requirements.txt
```
