/*
 * rosserial PubSub Example
 * Prints "hello world!" and toggles led
 */

#include <ros.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Empty.h>
#include <NewPing.h>

#define TRIGGER_PIN  4  // Arduino pin tied to trigger pin on the ultrasonic sensor.
#define ECHO_PIN     3  // Arduino pin tied to echo pin on the ultrasonic sensor.
#define MAX_DISTANCE 200 // Maximum distance we want to ping for (in centimeters). Maximum sensor distance is rated at 400-500cm.

NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE); // NewPing setup of pins and maximum distance.

ros::NodeHandle  nh;



void messageCb( const std_msgs::Empty& toggle_msg)
{
  digitalWrite(13, HIGH-digitalRead(13));   // blink the led
}

ros::Subscriber<std_msgs::Empty> sub("toggle_led", messageCb );



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
