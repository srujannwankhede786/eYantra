#!/usr/bin/env python

import rospy
from std_msgs.msg import Float64

def publisher():

    pub     = rospy.Publisher('chatter', Float64, queue_size=10)

    rate    = rospy.Rate(10)

    msg_to_publish  = Float64()

    counter = 0

    while not rospy.is_shutdown():
        string_to_publish = " Publishing %f"%counter
        counter += 1

        msg_to_publish.data = string_to_publish
        pub.publish(msg_to_publish)

        rospy.loginfo(string_to_publish)

        rate.sleep()


if __name__ == "__main__":
    rospy.init_node("Python_pub")
    publisher()
