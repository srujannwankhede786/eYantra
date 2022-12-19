#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Joy

def subscriber():
    #sub = rospy.Subscriber('joy', Joy, callback_function1)

    sub = rospy.Subscriber('joy', Joy, callback_axis)

    sub = rospy.Subscriber('joy', Joy, callback_button)

    rospy.spin()

#def callback_function1(message):
    #rospy.loginfo(" HEADER : %s"%message.header)

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
    elif LS[2] <= 0.9 :
        print (' LT ')

    if RS[4] >= 0.1:
        print (' RIGHT ANALOG turned up ')
    elif RS[4] <= -0.1:
        print (' RIGHT ANALOG turned down')
    elif RS[3] >= 0.1:
        print (' RIGHT ANALOG turned left ')
    elif RS[3] <= -0.1:
        print (' RIGHT ANALOG turned right')
    elif RS[5] <= 0.9 :
        print (' RT ')

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
    x = button.buttons
    if x[0] == 1:
        print (' A  GREEN')
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
    else:
        print (' no Button pressed ')

if __name__ == "__main__":
    rospy.init_node("python_sub_joy")
    subscriber()
