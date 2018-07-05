#!/bin/sh
# Generates rotolab.dae file from urdf,
# and generate IKFast solution for floor and gantry manipulator
# User running script must have permission to run docker

#Generate thrivaldi.dae
xacro --inorder $(rospack find thrivaldi_support)/urdf/thrivaldi.xacro  > thrivaldi.urdf
rosrun collada_urdf urdf_to_collada thrivaldi.urdf thrivaldi.dae

#Generate IKFast solution for floor manipulator
docker run -it --rm -v `pwd`:/ikfast -v `pwd`/output:/root/.openrave ros-openrave-docker openrave0.9.py --database inversekinematics --robot=/ikfast/wrapper_floor.xml --iktype=Transform6D --iktests=1000

#Generate IKFast solution for gantry manipulator
docker run -it --rm -v `pwd`:/ikfast -v `pwd`/output:/root/.openrave ros-openrave-docker openrave0.9.py --database inversekinematics --robot=/ikfast/wrapper_gantry.xml --iktype=Transform6D --iktests=1000

#Remove dae and urdf file
rm thrivaldi.dae
rm thrivaldi.urdf
