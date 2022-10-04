# {{cookiecutter.project_name}}

{%- if cookiecutter.github_actions == "yes" %}
[![CI]({{cookiecutter.repo_url}}/actions/workflows/main.yml/badge.svg?branch=master)]({{cookiecutter.repo_url}}/actions/workflows/main.yml)
{%- endif %}
{%- if cookiecutter.github_actions == "yes" and cookiecutter.helm == "yes" %}
[![K8s integration]({{cookiecutter.repo_url}}/actions/workflows/integration.yml/badge.svg)]({{cookiecutter.repo_url}}/actions/workflows/integration.yml)
{%- endif %}
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
![GitHub](https://img.shields.io/badge/fastapi-v.0.82.0-blue)
![GitHub](https://img.shields.io/badge/python-3.7%20%7C%203.8%20%7C%203.9%20%7C%203.10-blue)
![GitHub](https://img.shields.io/badge/license-{{cookiecutter.license}}-blue)

---

## This project was generated with [fastapi-mvc](https://github.com/fastapi-mvc/fastapi-mvc)

### Documentation

{% if cookiecutter.github_actions == "yes" %}
You should have documentation deployed to your project GitHub pages via [Build Docs workflow]({{cookiecutter.repo_url}}/actions/workflows/docs.yml)

**NOTE!** You might need to enable GitHub pages for this project first.
{% endif %}
To build manually:
```shell
make docs
```

## License

This project is licensed under the terms of the {{cookiecutter.license}} license.
