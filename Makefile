
include ../kubernetes/etc/help.mk
include ../kubernetes/etc/cli.mk

.PHONY: system-requirements-check
system-requirements-check: ##@setup checks system for required dependencies
	./etc/system-requirements-check.sh

.PHONY: deploy
deploy: ##@setup deploy to nodes
	$(CLI) kubectl apply \
		-f kubernetes/namespace.yaml \
		-f kubernetes

.PHONY: remove
remove: ##@setup destroy deployment
	$(CLI) kubectl delete ns npm-registry
