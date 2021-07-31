#build the custom image
docker build \
   --no-cache \
   --build-arg KONG_BASE="kong:latest" \
   --build-arg PLUGINS="kong-plugin-jwt-validation,kong-plugin-user-profile-validation" \
   --tag "kong-with-plugins" .
   