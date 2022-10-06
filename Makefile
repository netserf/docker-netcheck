IMAGE=netserf/netcheck:latest
SHORT_NAME=netcheck

build:
	docker build -t $(IMAGE) .

pull:
	docker pull $(IMAGE)

run:
	docker run --rm --name $(SHORT_NAME) --detach $(IMAGE)

check:
	docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(SHORT_NAME) | xargs curl

exec:
	docker exec -it $(SHORT_NAME) /bin/bash

clean:
	docker stop $(SHORT_NAME)
	docker rmi $(IMAGE)

