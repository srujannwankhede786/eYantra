/*
 * rosserial PubSub Example
 * Prints "hello world!" and toggles led
 */

#include <ros.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Int32.h>
#include <NewPing.h>

#define TRIGGER_PIN  2  
#define ECHO_PIN     3 
#define MAX_DISTANCE 200 

NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE); 

ros::NodeHandle  nh;



void messageCb( const std_msgs::Int32& toggle_msg)
{
  if (toggle_msg.data/10!=0)
  
  digitalWrite(13, HIGH-digitalRead(13));   // blink the led
}

ros::Subscriber<std_msgs::Int32> sub("chatter", messageCb );



std_msgs::Float32 str_msg;
ros::Publisher chatter("chatter", &str_msg);

//char hello[13] = "hello world!";

void setup()
{ 
  pinMode(13, OUTPUT);
  nh.initNode();
  nh.advertise(chatter);
  nh.subscribe(sub);
}

void loop()
{ 
  str_msg.data = sonar.ping_cm();
  chatter.publish( &str_msg );
  nh.spinOnce();
  delay(10);
}
