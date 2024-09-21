#!/bin/bash

set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Use docker-compose to build the images for all services defined in the compose file
docker-compose build

# Tag each image with the version and push to the container registry
docker tag book_catalog:latest $CONTAINER_REGISTRY/book_catalog:$VERSION
docker tag inventory_management:latest $CONTAINER_REGISTRY/inventory_management:$VERSION
