#!/bin/sh
 
set -x

VERSION_ID="${BUILD_ID}"
IMAGE_NAME="cloud-native-project:${BUILD_ID}"
IMAGE_ADDR="test-harbor.daocloud.io/nju01/${IMAGE_NAME}"
 
docker build -f Dockerfile --build-arg jar_name=target/cloud-native-project-0.0.1-SNAPSHOT.jar -t cloud-native-project:${BUILD_ID} . 
docker tag  ${IMAGE_NAME}:${VERSION_ID}  ${IMAGE_ADDR}:${VERSION_ID}
docker login --username=nju01 --password=nju012023 test-harbor.daocloud.io
docker push ${IMAGE_ADDR}:${VERSION_ID}
