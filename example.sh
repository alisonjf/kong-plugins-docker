#build the custom image
docker build \
   --no-cache \
   --build-arg KONG_BASE="kong:latest" \
   --build-arg PLUGINS="kong-plugin-jwt-validation,kong-plugin-user-profile-validation,kong-plugin-url-replace" \
   --tag "kong-with-plugins" .
   