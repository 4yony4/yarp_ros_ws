#include "ros/ros.h"
#include "yarp_ros_interfaces/Yarpinfo.h"
#include <sstream>
 
int main(int argc, char **argv) {
  ros::init(argc, argv, "yrp_node_publisher");
  ros::NodeHandle n;
  ros::Publisher pub = n.advertise<yarp_ros_interfaces::Yarpinfo>("yarpinfo", 1000);
  ros::Rate loop_rate(10);
  while (ros::ok()) {
    yarp_ros_interfaces::Yarpinfo msg;
    msg.msg="HI FROM ROS1 !!!!!";
    //msg.A = 1;
    //msg.B = 2;
    //msg.C = 3;
     
     
    pub.publish(msg);
    ros::spinOnce();
    
    loop_rate.sleep();
  }
  return 0;
}