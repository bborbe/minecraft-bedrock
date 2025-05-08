VERSION ?= 2025.5cd .0
REGISTRY ?= docker.io

build:
	docker build \
	--no-cache \
	--rm=true \
	--platform=linux/amd64 \
	--build-arg VERSION=$(VERSION) \
	-t $(REGISTRY)/bborbe/minecraft-bedrock:$(VERSION) .

upload:
	docker push $(REGISTRY)/bborbe/minecraft-bedrock:$(VERSION)

clean:
	docker rmi $(REGISTRY)/bborbe/minecraft-bedrock:$(VERSION)

