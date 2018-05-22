# halo_install_run_foreground
This script installs and runs the Halo agent in the foreground

1. Embed the halo_check.sh script in a Docker image
1. Run the image, specifying the halo_check.sh script as the command.
1. Use docker-exec to get the agent ID:

`docker exec -it CONTAINER_NAME cat /opt/cloudpassage/data/cphalo.properties | grep daemon-key | awk -F= '{print $2}'`
