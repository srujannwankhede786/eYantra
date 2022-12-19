#!/usr/bin/env python

import rospy
from std_msgs.msg import String

def publisher():

    pub     = rospy.Publisher('chatter', String, queue_size=10)

    rate    = rospy.Rate(100)

    msg_to_publish  = String()

    counter = "Front"

    while not rospy.is_shutdown():
        string_to_publish = "%s"%counter
        #counter += 1

        msg_to_publish.data = string_to_publish
        pub.publish(msg_to_publish)

        rospy.loginfo(string_to_publish)

        rate.sleep()


if __name__ == "__main__":
    rospy.init_node("test_pub")
    publisher()
