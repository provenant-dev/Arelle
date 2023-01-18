OPENSSL_VERSION=1.1.1s
PYTHON_VERSION=3.10.8

.PHONY: build-base-image
build-base-image:
	cd docker \
	&& docker build - < ubuntu.Dockerfile \
		--build-arg OPENSSL_VERSION=$(OPENSSL_VERSION) \
		--build-arg PYTHON_VERSION=$(PYTHON_VERSION) \
		-t provenant-dev/arelle:base
		# -t ghcr.io/provenant-dev/arelle

.PHONY: push-tag
push-tag:
	docker push ghcr.io/provenant-dev/arelle
