#include <ros.h>

//#include <std_msgs/Float32.h>
#include <std_msgs/String.h>
//#include <sensor_msgs/Joy.h>
//#include <std_msgs/Int32.h>

char x[10];
int y;

char F[] = " move front";
char R[] = " spin right";
char L[] = "spin left";

ros::NodeHandle nh;
//ros::NodeHandle nh1;

//void check(const std_msgs::Int32 &msg)
void check(const std_msgs::String &msg)
//void check(const std_msgs::Float32 &msg)
//void check(const sensor_msgs::Joy &axis)
{
  x[10] = msg.data;
  //y = msg.data;
  // float x[];
  //x[10]=axis.axes;

  if (x == "f")
  
  //if (y == 1)
  {
    nh.loginfo(F);
    // Serial.println(F);

    /*digitalWrite(13, HIGH);
    delay(1000);*/
    digitalWrite(13, HIGH);
    //delay(10);
  }

  else 
  {
    digitalWrite(13, LOW);
    nh.loginfo(L);
  }
}

//ros::Subscriber<std_msgs::Int32> sub1("/chatter", check);
ros::Subscriber<std_msgs::String> sub1("/chatter", check);
//ros::Subscriber<std_msgs::Float32> sub1("/chatter", check);
//ros::Subscriber<sensor_msgs::Joy> sub1("/joy", check);

void setup()
{
  nh.subscribe(sub1);
  pinMode(13, OUTPUT);
  nh.initNode();
  Serial.begin(57600);
}


void loop()
{
  nh.spinOnce();
  delay(1);
}
