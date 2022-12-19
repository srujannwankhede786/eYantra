#!/usr/bin/env python
import rospy
from std_msgs.msg import Float32MultiArray
from sensor_msgs.msg import Joy

def joyread(data):
    foo = Float32MultiArray()
    foo.data.append(4*data.axes[1])
    foo.data.append(4*data.buttons[14])
    pub.publish(foo)

def talker2():
    global pub
    pub = rospy.Publisher('chatter', Float32MultiArray,queue_size=10)
    rospy.Subscriber("joy", Joy, joyread)
    rospy.init_node('talker2', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
      rospy.sleep(1.0)



if __name__ == '__main__':
    try:
        talker2()
    except rospy.ROSInterruptException:
        pass
