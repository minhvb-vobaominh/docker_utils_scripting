#!/bin/bash

# get a list of all image names
image_names=$(docker ps -a --format "{{.Names}}")