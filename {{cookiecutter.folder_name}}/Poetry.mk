POETRY_HOME ?= ${HOME}/.local/share/pypoetry}
POETRY_BINARY ?= ${POETRY_HOME}/venv/bin/poetry
POETRY_VERSION ?= 1.2.0

.PHONY: build
build: ## Build {{cookiecutter.project_name}} package
	echo "[build] Build {{cookiecutter.project_name}} package."
	${POETRY_BINARY} build

.PHONY: install
install:  ## Install {{cookiecutter.project_name}} with poetry
	@build/install.sh

.PHONY: image
image:  ## Build {{cookiecutter.docker_image_name}} image
	@build/image.sh

.PHONY: clean-image
clean-image:  ## Clean {{cookiecutter.docker_image_name}} image
	@build/clean-image.sh

.PHONY: metrics
metrics: install ## Run {{cookiecutter.project_name}} metrics checks
	echo "[metrics] Run {{cookiecutter.project_name}} PEP 8 checks."
	${POETRY_BINARY} run flake8 --select=E,W,I --max-line-length 80 --import-order-style pep8 --statistics --count {{cookiecutter.package_name}}
	echo "[metrics] Run {{cookiecutter.project_name}} PEP 257 checks."
	${POETRY_BINARY} run flake8 --select=D --ignore D301 --statistics --count {{cookiecutter.package_name}}
	echo "[metrics] Run {{cookiecutter.project_name}} pyflakes checks."
	${POETRY_BINARY} run flake8 --select=F --statistics --count {{cookiecutter.package_name}}
	echo "[metrics] Run {{cookiecutter.project_name}} code complexity checks."
	${POETRY_BINARY} run flake8 --select=C901 --statistics --count {{cookiecutter.package_name}}
	echo "[metrics] Run {{cookiecutter.project_name}} open TODO checks."
	${POETRY_BINARY} run flake8 --select=T --statistics --count {{cookiecutter.package_name}} tests
	echo "[metrics] Run {{cookiecutter.project_name}} black checks."
	${POETRY_BINARY} run black -l 80 --check {{cookiecutter.package_name}}

.PHONY: unit-test
unit-test: install ## Run {{cookiecutter.project_name}} unit tests
	echo "[unit-test] Run {{cookiecutter.project_name}} unit tests."
	${POETRY_BINARY} run pytest tests/unit

.PHONY: integration-test
integration-test: install ## Run {{cookiecutter.project_name}} integration tests
	echo "[unit-test] Run {{cookiecutter.project_name}} integration tests."
	${POETRY_BINARY} run pytest tests/integration

.PHONY: test
test: unit-test integration-test ## Run {{cookiecutter.project_name}} tests

.PHONY: docs
docs: install ## Build {{cookiecutter.project_name}} documentation
	echo "[docs] Build {{cookiecutter.project_name}} documentation."
	${POETRY_BINARY} run sphinx-build docs site
{% if cookiecutter.helm == "yes" %}
.PHONY: dev-env
dev-env: image ## Start a local Kubernetes cluster using minikube and deploy application
	@build/dev-env.sh

.PHONY: clean
clean: ## Remove .cache directory and cached minikube
	minikube delete && rm -rf ~/.cache ~/.minikube
{% endif %}
