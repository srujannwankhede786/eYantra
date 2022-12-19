#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Joy

from std_msgs.msg import String
from std_msgs.msg import Float32

def subpub():
    #sub = rospy.Subscriber('joy', Joy, callback_function1)

    sub = rospy.Subscriber('joy', Joy, callback_axis)

    sub = rospy.Subscriber('joy', Joy, callback_button)

    rospy.spin()

def callback_axis(axis):
    rospy.loginfo(" AXIS : %f %f %f %f %f %f %f %f "%axis.axes)

    LS = axis.axes
    RS = axis.axes
    NP = axis.axes

    if LS[0] >= 0.1:
        print (' LEFT ANALOG turned left ')
    elif LS[0] <= -0.1:
        print (' LEFT ANALOG turned right')
    elif LS[1] >= 0.1:
        print (' LEFT ANALOG turned up ')
    elif LS[1] <= -0.1:
        print (' LEFT ANALOG turned down')
    elif LS[2] <= 0.85 :
        print (' LT ') #range 1 to -1; -1 full pressed

    if RS[4] >= 0.1:
        print (' RIGHT ANALOG turned up ')
    elif RS[4] <= -0.1:
        print (' RIGHT ANALOG turned down')
    elif RS[3] >= 0.1:
        print (' RIGHT ANALOG turned left ')
    elif RS[3] <= -0.1:
        print (' RIGHT ANALOG turned right')
    elif RS[5] <= 0.85 :
        print (' RT ') #range 1 to -1; -1 full pressed

    if NP[6] == 1:
        print ('Left NP')
    elif NP[6] == -1:
        print (' RIGHT NP')
    elif NP[7] == 1:
        print (' UP NP')
    elif NP[7] == -1:
        print (' DOWN NP')

def callback_button(button):

    rospy.loginfo(" BUTTONS : %d %d %d %d %d %d %d %d %d %d %d "%button.buttons)
    #joy = Joy()
    #global joy

    pub     = rospy.Publisher('chatter', Float32, queue_size=10)

    rate    = rospy.Rate(1000)
    msg_to_publish  = Float32()
    #counter = 0

    x = button.buttons
    if x[0] == 1:
        print (' A  GREEN')
        counter = 1
        string_to_publish = "%f"%counter
        #counter = 1

        msg_to_publish.data = string_to_publish
        pub.publish(msg_to_publish)

        rospy.loginfo(string_to_publish)

    elif x[1] == 1:
        print (' B RED')
    elif x[2] == 1:
        print (' X BLUE')
    elif x[3] == 1:
        print (' Y YELLOW')
    elif x[4] == 1:
        print ( 'LB')
    elif x[5] == 1:
        print (' RB')
    elif x[6] == 1:
        print (' Window')
    elif x[7] == 1:
        print (' Options')
    elif x[10] == 1:
        print (' R3')
    elif x[9] == 1:
        print (' L3 ')
    elif x[8] == 1:
        print (' XBOX ')


if __name__ == "__main__":
    rospy.init_node("python_pubsub_joy")
    subpub()
