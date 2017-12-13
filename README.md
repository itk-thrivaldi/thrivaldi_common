# Catkin metapackage for KUKA Robotics lab

Packages for using the KUKA Robotics lab at Department of Engineering Cybernetics, NTNU

## Setup instructions

1. ### Install ROS Kinetic

  Follow guide for ROS Kinetic at http://wiki.ros.org/kinetic/Installation/Ubuntu
  
2. ### Install MoveIT!

  ```sudo apt-get install ros-kinetic-moveit```
  
3. ### Install ROS-Industrial

  ```sudo apt-get install ros-kinetic-industrial-core```
  
4. ### Create a catkin workspace

  (See http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment )
  
5. ### Download needed repositories into CATKIN_WS/src

   1. Need patches to the RSI driver thats not in the offical kuka_experimental repo 
   
   ```git clone https://github.com/itk-thrivaldi/kuka_experimental.git```
  
   2. Install the bio-ik kinematics solver from TAMS-group
  
   ```git clone https://github.com/TAMS-Group/bio_ik.git```
  
   3. URDF and other needed packages
  
   ```git clone https://github.com/itk-thrivaldi/thrivaldi_common.git```

6. ### Install missing dependencies
  Run rosdep from CATKIN_WS/src
  
  ```rosdep install --from-paths ./ --ignore-src --rosdistro kinetic -y```

7. ### Compile packages

  run ```catkin_make``` from CATKIN_WS

8. ### Test 

 ```roslaunch robotlab_moveit_config moveit_planning_execution_kvp.launch sim:=true```
