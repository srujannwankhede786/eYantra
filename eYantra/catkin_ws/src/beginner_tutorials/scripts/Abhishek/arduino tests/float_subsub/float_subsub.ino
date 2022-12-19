/* 
 * rosserial::std_msgs::Float64 Test
 * Receives a Float64 input, subtracts 1.0, and publishes it
 */

#include <ros.h>
#include <std_msgs/Float32.h>
//#include <std_msgs/Int32.h>

//int x; 
float x;

ros::NodeHandle nh;

/*ROS_CALLBACK(messageCb, std_msgs::Float64, msg)
{
  x = msg.data - 1.0;
  digitalWrite(13, HIGH-digitalRead(13));   // blink the led
}*/
void messageCb( const std_msgs::Float32 &msg)
{
  x = msg.data - 1.0;
  digitalWrite(13, HIGH-digitalRead(13));   // blink the led
}


std_msgs::Float32 test;
ros::Subscriber<std_msgs::Float32> sub("chatter", messageCb );
ros::Publisher p("talks", &test);

void setup()
{
  pinMode(13, OUTPUT);
  nh.initNode();
  nh.advertise(p);
  nh.subscribe(sub);
}

void loop()
{
  test.data = x;
  p.publish( &test );
  nh.spinOnce();
  delay(10);
}
