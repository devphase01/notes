REPOSITORY_NAME="some-name"

for image_id in $(docker images | grep "$REPOSITORY_NAME" | awk '{print $3}'); do
  docker rmi -f "$image_id"
done