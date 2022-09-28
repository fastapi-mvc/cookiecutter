PYTHON_NIXPKG ?= python39

.PHONY: build
build:  ## Build {{cookiecutter.project_name}} Nix package
	echo "[nix][build] Build {{cookiecutter.project_name}} Nix package."
	@nix-build -E 'with import <nixpkgs> { overlays = [ (import ./overlay.nix) ]; }; callPackage ./default.nix {python = pkgs.${PYTHON_NIXPKG}; poetry2nix = pkgs.poetry2nix;}'

.PHONY: install
install:  ## Install {{cookiecutter.project_name}} env with Nix
	echo "[nix][install] Install {{cookiecutter.project_name}} env with Nix"
	@nix-build -E 'with import <nixpkgs> { overlays = [ (import ./overlay.nix) ]; }; callPackage ./editable.nix {python = pkgs.${PYTHON_NIXPKG}; poetry2nix = pkgs.poetry2nix;}'

.PHONY: image
image:  ## Build {{cookiecutter.project_name}} image with Nix
	echo "[nix][image] Build {{cookiecutter.project_name}} image with Nix."
	@nix-build image.nix

.PHONY: docs
docs: install  ## Build {{cookiecutter.project_name}} documentation
	echo "[docs] Build {{cookiecutter.project_name}} documentation."
	result/bin/sphinx-build docs site

.PHONY: metrics
metrics: install  ## Run {{cookiecutter.project_name}} metrics checks
	echo "[nix][metrics] Run {{cookiecutter.project_name}} PEP 8 checks."
	result/bin/flake8 --select=E,W,I --max-line-length 80 --import-order-style pep8 --statistics --count {{cookiecutter.package_name}}
	echo "[nix][metrics] Run {{cookiecutter.project_name}} PEP 257 checks."
	result/bin/flake8 --select=D --ignore D301 --statistics --count {{cookiecutter.package_name}}
	echo "[nix][metrics] Run {{cookiecutter.project_name}} pyflakes checks."
	result/bin/flake8 --select=F --statistics --count {{cookiecutter.package_name}}
	echo "[nix][metrics] Run {{cookiecutter.project_name}} code complexity checks."
	result/bin/flake8 --select=C901 --statistics --count {{cookiecutter.package_name}}
	echo "[nix][metrics] Run {{cookiecutter.project_name}} open TODO checks."
	result/bin/flake8 --select=T --statistics --count {{cookiecutter.package_name}} tests
	echo "[nix][metrics] Run {{cookiecutter.project_name}} black checks."
	result/bin/black -l 80 --check {{cookiecutter.package_name}}

.PHONY: unit-test
unit-test: install  ## Run {{cookiecutter.project_name}} unit tests
	echo "[nix][unit-test] Run {{cookiecutter.project_name}} unit tests."
	result/bin/pytest tests/unit

.PHONY: integration-test
integration-test: install  ## Run {{cookiecutter.project_name}} integration tests
	echo "[nix][integration-test] Run {{cookiecutter.project_name}} unit tests."
	result/bin/pytest tests/integration

.PHONY: test
test: unit-test integration-test ## Run {{cookiecutter.project_name}} tests

