OPENSSL_VERSION=1.1.1s
PYTHON_VERSION=3.10.8

.PHONY: build-base-image
build-base-image:
	docker build --file docker/ubuntu.Dockerfile . \
		--build-arg OPENSSL_VERSION=$(OPENSSL_VERSION) \
		--build-arg PYTHON_VERSION=$(PYTHON_VERSION) \
		--tag provenant-dev/arelle:base

.PHONY: build-image
build-image:
	docker build . \
		--tag provenant-dev/arelle \
		--tag ghcr.io/provenant-dev/arelle

.PHONY: push-tag
push-tag:
	docker push ghcr.io/provenant-dev/arelle
