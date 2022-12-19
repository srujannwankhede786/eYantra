#include <ros.h>
#include <std_msgs/Int32.h>

ros::NodeHandle nh;

float var;

void messageCb(const std_msgs::Int32 &msg)
{
  var=msg.data;
 
  if(var > 10)
   digitalWrite(13, HIGH);   // blink the led
      else
   digitalWrite(13, LOW);   // turn off the led
}

ros::Subscriber<std_msgs::Int32> sub("/chatter", &messageCb);

void setup()
{
  pinMode(13, OUTPUT);
  nh.initNode();
  nh.subscribe(sub);
}

void loop()
{
  nh.spinOnce();
  delay(200);
}
