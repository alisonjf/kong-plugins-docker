#build the custom image
docker build \
   --build-arg "KONG_LICENSE_DATA=$KONG_LICENSE_DATA" \
   --build-arg KONG_BASE="kong-ee" \
   --build-arg PLUGINS="kong-plugin-request-validator" \
   --build-arg ROCKS_DIR="./rocksdir" \
   --tag "your_new_image" .