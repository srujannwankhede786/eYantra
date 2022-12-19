#!/usr/bin/env python

import rospy
from std_msgs.msg import Float64

def subscriber():
    sub = rospy.Subscriber('talks', Float64, callback_function)

    rospy.spin()

def callback_function(message):
    rospy.loginfo("I received: %f"%message.data)

if __name__ == "__main__":
    rospy.init_node("test_sub")
    subscriber()
