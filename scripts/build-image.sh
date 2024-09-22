#!/bin/bash

set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Build Docker images for book_catalog and inventory_management
docker build -t $CONTAINER_REGISTRY/book_catalog:$VERSION ./book_catalog
docker build -t $CONTAINER_REGISTRY/inventory_management:$VERSION ./inventory_management
