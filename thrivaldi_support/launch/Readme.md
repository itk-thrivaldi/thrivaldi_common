# Notes on loading controller

The main controller file is `robot_interface_streaming_thrivaldi.launch`. Due too having multiple hardware interfaces, and two robots, it takes a set of parameters. All parameters defaults to false, making it easier to reuse at the risk of confusing the user. 


```
  <arg name="sim_floor" default="false"/>
  <arg name="sim_gantry" default="false"/>
  <arg name="rsi_floor" default="false" />
  <arg name="rsi_gantry" default="false" />
  <arg name="kvp_floor" default="false" />
  <arg name="kvp_gantry" default="false" />
```

A choice of controller to use must be made for each robot.

* RSI for both controllers
   `roslaunch thrivaldi_support robot_interface_streaming_thrivaldi.launch rsi_gantry:=true rsi_floor:=true`

* RSI for gantry, and KVP for floor
   `roslaunch thrivaldi_support robot_interface_streaming_thrivaldi.launch rsi_gantry:=true kvp_floor:=true`
      
To read robot state with the  KVP driver requires no interaction on the KRC. If only one robot is used, this makes for an easy way to get correct state (for collision avoidance, etc) without extra interaction when reloading the controller.
