
include ../kubernetes/etc/help.mk
include ../kubernetes/etc/cli.mk

.PHONY: deploy
deploy: ##@setup deploy to nodes
	$(CLI) kubectl apply \
		-f kubernetes/namespace.yaml \
		-f kubernetes
