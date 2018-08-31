pjName := cfx.antd-wrapper

docker:
	docker run \
		--name ${pjName} \
		--rm \
		-ti \
		-p 3333:8000 \
		-v $$(pwd):/root/${pjName} \
		mooxe/node \
		/bin/bash

in:
	docker exec \
		-ti \
		${pjName} \
		/bin/bash

export PATH := ./node_modules/.bin:$(PATH)

include ./node_modules/cfx.simple-build-tool/maker/main.mk
include ./node_modules/cfx.simple-build-tool/maker/storybook.mk
