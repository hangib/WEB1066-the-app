#!/usr/bin/env #!/usr/bin/env bash
set -e

docker login --username ${DOCKER_LOGIN} --password "${DOCKER_PASSWORD}"
docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/web1066-the-app:latest
docker push $DOCKER_LOGIN/web1066-the-app:latest
set +e
