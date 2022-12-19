#!/usr/bin/env python
from __future__ import print_function
import numpy as np
import pickle
import roslib
import sys
import rospy
import cv2
import copy
import os
from survey_and_rescue.msg import SRinfo
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

def detect_color_contour_centers(frame, x, y):
	go = False
	#for n in range(x-1,x+1):
	#	for m in range(y-1,y+1):
			
	#		if frame[m][n]==255:
	#			go = True
	if frame[y][x]==255:
		go = True
					
	return go

def check_whether_lit(frame, x, y):
  	go = False
  	#for n in range(x-1,x+1):
  	#	for m in range(y-1,y+1):
	#		if frame[m][n]==255:
  	#			go = True
  	if frame[y][x]==255:
		go = True
			
  	return go

class sr_determine_colors():
 
	def __init__(self):
		self.bridge = CvBridge()
		self.detect_pub = rospy.Publisher("/detection_info",SRinfo,queue_size=10) 
		self.image_sub = rospy.Subscriber("/usb_cam/image_rect_color",Image,self.callback)
		self.cv_image = None
		self.rect_list = None
		self.yo = SRinfo()

		self.Rescue = []
		self.Medicine = []
		self.Food = []
		
		self.r = 0
		self.b = 0
		self.g = 0


  	def load_rois(self, file_path = os.path.join( os.path.dirname(__file__) , 'rect_info.pkl')):
  		try:
			with open(file_path , 'rb') as input:
  				self.rect_list = pickle.load(input)
  		except IOError, ValueError:
  			print("File doesn't exist or is corrupted")
  
  	def callback(self,data):
  		try:
  			self.cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
  		except CvBridgeError as e:
  			print(e)
  		lower_red = np.array([169,58,15], dtype=np.uint8)
  		higher_red = np.array([179,255,255], dtype=np.uint8)
  		lower_green = np.array([59,62,14], dtype=np.uint8)
  		higher_green = np.array([75,255,255], dtype=np.uint8)
  		lower_blue = np.array([105,123,82], dtype=np.uint8)
  		higher_blue = np.array([118,255,255], dtype=np.uint8)
  		hsv_frame = cv2.cvtColor(self.cv_image, cv2.COLOR_BGR2HSV)
  		red = cv2.inRange(hsv_frame, lower_red, higher_red)
  		red = cv2.medianBlur(red, 31)
  		green = cv2.inRange(hsv_frame, lower_green, higher_green)
  		green = cv2.medianBlur(green, 15)
  		blue = cv2.inRange(hsv_frame, lower_blue, higher_blue)
  		blue = cv2.medianBlur(blue, 15)
  		_ = cv2.bitwise_or(red, green)
  		mask = cv2.bitwise_or(_, blue)
  		median = cv2.medianBlur(mask,15)
  		
  		
  		for i in sorted(self.rect_list.keys()):
  			x, y = (int(self.rect_list[i][0][0][0])+int(self.rect_list[i][2][0][0]))//2, (int(self.rect_list[i][0][0][1])+int(self.rect_list[i][2][0][1]))//2
  			#print(self.rect_list.keys())
  			if detect_color_contour_centers(mask, x, y):
  				if check_whether_lit(red, x, y):
  					if (str(i) in self.Medicine) or (str(i) in self.Food) or (str(i) not in self.Rescue) :
  						if (str(i) in self.Medicine):
  							self.Medicine.remove(str(i))
  						if (str(i) in self.Food):
  							self.Food.remove(str(i))
  						if str(i) not in self.Rescue:
  							self.Rescue.append(str(i))
  						#print("red" +str(i))
  						self.yo.location = str(i)
  						self.yo.info = "RESCUE"
  						self.detect_pub.publish(self.yo)
  				elif check_whether_lit(blue, x, y):
  					if (str(i) in self.Rescue) or (str(i) in self.Food) or (str(i) not in self.Medicine):
  						if (str(i) in self.Rescue):
  							self.Rescue.remove(str(i))
  						if (str(i) in self.Food):
  							self.Food.remove(str(i))
  						if str(i) not in self.Medicine:
  							self.Medicine.append(str(i))
  						#print("blue" + str(i))
  						self.yo.location = str(i)
  						self.yo.info = "MEDICINE"
  						self.detect_pub.publish(self.yo)
  				elif check_whether_lit(green, x, y):
  					if (str(i) in self.Rescue) or (str(i) in self.Medicine ) or (str(i) not in self.Food):
  						if (str(i) in self.Rescue):
  							self.Rescue.remove(str(i))
  						if (str(i) in self.Medicine):
  							self.Medicine.remove(str(i))
  						if str(i) not in self.Food:
  							self.Food.append(str(i))
  						#print("green" + str(i))	
						self.yo.location = str(i)
						self.yo.info = "FOOD"
						self.detect_pub.publish(self.yo)
				else:
					if str(i) in self.Rescue:
						self.Rescue.remove(str(i))
					if str(i) in self.Medicine:
						self.Medicine.remove(str(i))
					if str(i) in self.Food:
						self.Food.remove(str(i))
def main(args):
	rospy.init_node('sr_determine_colors', anonymous=False)
	rate = rospy.Rate(30)
	s = sr_determine_colors()
	s.load_rois()
	try:
		rospy.spin()
	except KeyboardInterrupt:
		print("Shutting down")
	cv2.destroyAllWindows()
if __name__ == '__main__':
	main(sys.argv)
