#!/usr/bin/env python

import rospy
import roslib
import tf

from geometry_msgs.msg import PoseArray

#Defining a class
class Marker_detect():

	def __init__(self):
		rospy.init_node('marker_detection',anonymous=False) # initializing a ros node with name marker_detection

		self.whycon_marker = {}	# Declaring dictionaries
	
		rospy.Subscriber('/whycon/poses',PoseArray,self.whycon_data)	# Subscribing to topic

	# Callback for /whycon/poses
	# Please fill in the function
	def whycon_data(self,msg):
		
		self.whycon_marker = {0: [ float("%.3f" % msg.poses[0].position.x) , float("%.3f" % msg.poses[0].position.y) , float("%.3f" % msg.poses[0].position.z)] ,1: [ float("%.3f" % msg.poses[1].position.x) , float("%.3f" % msg.poses[1].position.y) , float("%.3f" % msg.poses[1].position.z)] ,2: [ float("%.3f" % msg.poses[2].position.x) , float("%.3f" % msg.poses[2].position.y) , float("%.3f" % msg.poses[2].position.z)] ,3: [ float("%.3f" % msg.poses[3].position.x) , float("%.3f" % msg.poses[3].position.y) , float("%.3f" % msg.poses[3].position.z)] ,4: [ float("%.3f" % msg.poses[4].position.x) , float("%.3f" % msg.poses[4].position.y) , float("%.3f" % msg.poses[4].position.z)]}
	
		# Printing the detected markers on terminal
		print(self.whycon_marker)


if __name__=="__main__":
	marker = Marker_detect()
	while not rospy.is_shutdown():
		rospy.spin()