#!/bin/bash

# get a list of all image ids
image_ids=$(docker images -q)

if (( ${#image_ids[@]} )); then
 echo "No docker images found. Exiting..."
 exit 1
fi

# loop through each image id and remove the corresponding image
for id in $image_ids; do
  docker rmi "$id"
  if [ $? -eq 0 ]; then
    echo "Docker image '$id' removed successfully."
  else
    echo "Failed to remove docker image '$id'."
  fi
done

echo "All docker images removed."
