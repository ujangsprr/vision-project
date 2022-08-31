#include "rosHeaderVision.h"
vision::pub_ballomni pub_ballmsg;
vision::pub_robomni pub_robomsg;
vision::pub_goalomni pub_goalmsg;
vision::pub_correction pub_positionmsg;
// std_msgs::Int16MultiArray utility;


// extern float posFuturex[4],posFuturey[4];

void odometryCallback(const nav_msgs::Odometry &msg){
		odoX 			= msg.pose.pose.position.x;
		odoY			= msg.pose.pose.position.y;
		dataYaw 		= msg.pose.pose.orientation.z;//0<->179////-1 <-> -180 //CCW positif
}

void publishBallCallback(){
		pub_ballmsg.visionBallPosX 		 = ball.posx;//
		pub_ballmsg.visionBallPosY 		 = ball.posy;
		pub_ballmsg.visionBallPosT 		 = ball.mapSdt;

	
		pub_ballomni.publish(pub_ballmsg);
}
 
void publishRobotCallback(){
		pub_robomsg.visionRobotPosT 		 = robot.mapSdt;

	
		pub_robomni.publish(pub_robomsg);
}

void publishGawangCallback(){
		pub_goalmsg.visionGawangPosX 		 = gawang.posx;//
		pub_goalmsg.visionGawangPosY 		 = gawang.posy;
		pub_goalmsg.visionGawangPosT 		 = gawang.mapSdt;

	
		pub_goalomni.publish(pub_goalmsg);
}

void publishCorrectionCallback(){
		pub_positionmsg.visionCorrectionPosX 		 = position.posx;//
		pub_positionmsg.visionCorrectionPosY 		 = position.posy;
		pub_positionmsg.visionCorrectionPosT 		 = position.mapSdt;

	
		pub_correction.publish(pub_positionmsg);
}

void receiveFlag(const std_msgs::Bool &msg){
		Flag 			= msg.data;
}

void publishTriggerVision(){

}


