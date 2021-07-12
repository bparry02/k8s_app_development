# Ansible Collection - bparry02.k8s_app_development

Documentation for the collection.

## Testing

```
# create virtual environment and install dependencies
python3 -m venv .
source bin/activate
pip3 install --upgrade pip setuptools pip-tools

pip install -r requirements.txt
```

## Development

. Updating python dependencies:

```
source bin/activate
pip3 install --upgrade pip setuptools pip-tools
pip-compile --upgrade --generate-hashes --output-file requirements.txt requirements.in
pip3 install --upgrade -r requirements.txt
```
