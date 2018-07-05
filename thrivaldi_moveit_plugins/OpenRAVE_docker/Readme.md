# Files for generating IKFast solutions

As OpenRave is somewhat non-trival to install on Ubuntu 16.04, we use Docker to set up a ROS Indigo installation with OpenRave. This is then used to generate IKFast solvers for both manipulators.

Dockerfile is from https://answers.ros.org/question/263925/generating-an-ikfast-solution-for-4-dof-arm/

Docker installation instructions
https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce-1

Add user to docker group
`sudo usermod -aG docker $USER`

Generate docker image:
`docker build -t ros-indigo-openrave docker/`

Generate IKFast solutions files
`generate_ikfast.sh`

IKFast solutions should now be in `output/`
