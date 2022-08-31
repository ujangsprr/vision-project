#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <opencv2/dnn.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/core/ocl.hpp>

#include <opencv2/dnn/dnn.hpp>

#include <iostream>
#include <sstream>
#include <signal.h>
#include <fstream>
#include <ctime>
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>

using namespace cv;
using namespace std;

const size_t width = 300;
const size_t height = 300;
int det_index;
float X1, Width2, Y1, Height2;

int index_obstacle;
int index_bola;
int index_Xline;
int index_Tline;
int index_Lline;

int mode = 0;

int findObject = 0;

int Object_X, Object_Y, Pixel_x, Pixel_Y;
float jarak_pixel, jarak_asli;
int flag = 0;
float sudutObjeck;
int pixel_XB, pixel_YB;
int errX = 0;
int errY = 0;
ros::Time current_time,prev_time;
dnn::Net net;
std::vector<std::string> Names;
//===========Vision Variables=============
Mat frame(1280, 720, CV_8UC3);
Mat readyframe;

bool grepcapture = true;

double pixtoreal(double x)
{
	double y;

	y = 12.1644502*pow(1.013568149,x);
	
	if( y <= 44.96)			y = -13.157779	+ (1.41104493*y)	;
	else if( y <= 102.29)	y = 11.7664542	+ (0.868191827*y)	;
	else if( y <= 173.03)	y = 16.910151	+ (0.82463985*y)	;
	else if( y <= 220.53)	y = -22.53772	+ (1.0510427*y)	;
	else if( y <= 284.89)	y = -41.93409	+ (1.12778117*y)	;
	else if( y <= 304.75)	y = -249.432	+ (1.862327*y)	;
	else if( y <= 330.42)	y = -31.0269	+ (1.153294*y)		;
	else if( y <= 363.10)	y = -139.3616	+ (1.4887917*y)		;

	return y;
}

float Sudut(float px1, float py1, float pWidth2, float pHeight2)
{
 	float angle = (double)atan2( pHeight2 - py1, pWidth2 - px1)* 180 / CV_PI;
 	
 	return angle;
}
//===========Vision Function=============
float mappingValue(float x,float in_min,float in_max,float out_min, float out_max)
{
	float hasil = (x - in_min) * (out_max - out_min) / (in_max -in_min) + out_min;
	
	return  hasil;
}
static bool getFileContent(std::string fileName)
{

	// Open the File
	std::ifstream in(fileName.c_str());
	// Check if object is valid
	if(!in.is_open()) return false;

	std::string str;
	// Read the next line from File untill it reaches the end.
	while (std::getline(in, str))
	{
		// Line contains string of length > 0 then save it in vector
		if(str.size()>0) Names.push_back(str);
	}
	// Close The File
	in.close();
	return true;
}
//Mat detection, blobimg;
Mat blobimg , detection ;
//const float confidence_threshold = 0.1;
float detect_confidence;
int jarak_int ;


Mat detect_from_video(Mat &executeFrame)
{
	
    blobimg = dnn::blobFromImage(executeFrame, 1.0, Size(300, 300), 0.0, true);
	
	cout<<"NT :"<< blobimg.size()<<endl;
	net.setInput(blobimg);
	detection = net.forward("detection_out");
	cout<<"NT forward :"<< detection.size()<<endl;
	Mat detectionMat(detection.size[2], detection.size[3], CV_32F, detection.ptr<float>());
	const float confidence_threshold = 0.1;
	
	for(int i=0; i<detectionMat.rows; i++){
		detect_confidence = detectionMat.at<float>(i, 2);
		findObject = 1;
		det_index = (int) detectionMat.at<float>(i, 1); //det_index isinya index objek yg di deteksi

		if (det_index == 1 ){
			index_bola = det_index;
			putText(executeFrame, format("%s", Names[index_bola].c_str()), Point(X1, Y1-5) ,FONT_HERSHEY_SIMPLEX,0.5, Scalar(0, 0, 255), 1, 8, 0);
		
		}
		else if (det_index == 2){
			index_obstacle = det_index;
			putText(executeFrame, format("%s", Names[index_obstacle].c_str()), Point(X1, Y1-5) ,FONT_HERSHEY_SIMPLEX,0.5, Scalar(0, 0, 255), 1, 8, 0);

		}
		else if (det_index == 3){
			index_Xline = det_index;
			putText(executeFrame, format("%s", Names[index_Xline].c_str()), Point(X1, Y1-5) ,FONT_HERSHEY_SIMPLEX,0.5, Scalar(0, 0, 255), 1, 8, 0);

		}
		else if (det_index == 4){
			index_Tline = det_index;
			putText(executeFrame, format("%s", Names[index_Tline].c_str()), Point(X1, Y1-5) ,FONT_HERSHEY_SIMPLEX,0.5, Scalar(0, 0, 255), 1, 8, 0);

		}
		else if (det_index == 5){
			index_Lline = det_index;
			putText(executeFrame, format("%s", Names[index_Lline].c_str()), Point(X1, Y1-5) ,FONT_HERSHEY_SIMPLEX,0.5, Scalar(0, 0, 255), 1, 8, 0);

		}

		if(detect_confidence > confidence_threshold){
			X1 = detectionMat.at<float>(i, 3)*executeFrame.cols;
			Y1 = detectionMat.at<float>(i, 4)*executeFrame.rows;
			Width2 = detectionMat.at<float>(i, 5)*executeFrame.cols;
			Height2 = detectionMat.at<float>(i, 6)*executeFrame.rows;

			if(flag == 1){
				cout <<X1 << " " << Width2 << " || "<<Y1 <<" "<<Height2<<endl;
				Rect rec((int)X1, (int)Y1, (int)(Width2 - X1), (int)(Height2 - Y1));
				rectangle(executeFrame,rec, Scalar(0, 0, 255), 1, 8, 0);
				
			}
			cout <<"Class : "<<Names[det_index]<<endl;
			cout <<"detect : "<<detect_confidence<<endl;
			cout <<"index Ball: "<<index_bola<<endl;
			cout <<"index Obs: "<<index_obstacle<<endl;
			cout <<"index L: "<<index_Lline<<endl;
			cout <<"index X: "<<index_Xline<<endl;
			cout <<"index T: "<<index_Tline<<endl;
			
			cout <<"==================================="<<endl;

		}
	


	}

	if(findObject == 1){
		/*Mencari jarak pixel */
		pixel_XB = X1 + (Width2/2);
		pixel_YB = Y1 + (Height2/2);

		errX = (int)(320 - pixel_XB);
		errY = (int)(320 - pixel_YB);

		jarak_pixel = sqrt(pow((pixel_XB - 320), 2) + pow((pixel_YB - 320), 2));
		jarak_int = (int) jarak_pixel;
		jarak_asli = pixtoreal(jarak_pixel);

		int sudut = (int)Sudut((float)pixel_XB, (float)pixel_YB, (float)Width2/2, (float)Height2/2+0);
		if(sudut >= 90 && sudut <= 180)			sudutObjeck = mappingValue(sudut, 90,180,0,90);
		else if(sudut >= -179 && sudut <= -90)	sudutObjeck = mappingValue(sudut, -179,-90,91,180);
		else if(sudut >= 0 && sudut <= 89)		sudutObjeck = mappingValue(sudut, 0,89,-90,-1);
		else if(sudut < 0 && sudut > - 90)		sudutObjeck = mappingValue(sudut, -1,-90,-89,-180);
	
	}
	else{
		errX = 800;
		errY = 800;
	}
	
		
	if (flag ==1 ){
		imshow("frame", executeFrame);
		//cout << "Jarak pixel: " << jarak_pixel << " || jarak asli : " << jarak_asli << endl;
		//cout<<"det index: "<<det_index<<endl;
	}
		
    return executeFrame;
	detectionMat.release();
	detection.release();
	blobimg.release();
	executeFrame.release();
}

bool EXITNOW=false;
time_t start, endb;
void mySigintHandler(int sig){
ROS_WARN("Vision OMNI was KILLED = %d!!!",sig);
EXITNOW=true;
}


void imageCallback(const sensor_msgs::ImageConstPtr& msg){
  try{
    (cv_bridge::toCvShare(msg, "bgr8")->image).copyTo(frame);
    grepcapture = true;

  }
  catch (cv_bridge::Exception& e){
    ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());

  }
}


int main(int argc,char ** argv)
{
   bool result;
    //MobileNetV1
	if (mode == 1){ //Bola
	   	net = dnn::readNetFromTensorflow("/home/erna/VisionProject/src/vision/src/pb_file/frozen_inference_graph1.pb","/home/erna/VisionProject/src/vision/src/pb_file/MobileNetSSD45.pbtxt");
    	result = getFileContent("/home/erna/VisionProject/src/vision/src/pb_file/predefined_classes1.txt");
	
	}
	else if ( mode == 2){ //Robot Teman
		net = dnn::readNetFromTensorflow("/home/erna/VisionProject/src/vision/src/pb_file/frozen_inference_graph1.pb","/home/erna/VisionProject/src/vision/src/pb_file/MobileNetSSD45.pbtxt");
    	result = getFileContent("/home/erna/VisionProject/src/vision/src/pb_file/predefined_classes1.txt");
	
	}
	else if ( mode == 3){ // Gawang
		net = dnn::readNetFromTensorflow("/home/erna/VisionProject/src/vision/src/pb_file/frozen_inference_graph1.pb","/home/erna/VisionProject/src/vision/src/pb_file/MobileNetSSD45.pbtxt");
		result = getFileContent("/home/erna/VisionProject/src/vision/src/pb_file/predefined_classes1.txt");
	
	}
	else if ( mode == 4){ // Garis
		net = dnn::readNetFromTensorflow("/home/erna/VisionProject/src/vision/src/pb_file/frozen_inference_graph1.pb","/home/erna/VisionProject/src/vision/src/pb_file/MobileNetSSD45.pbtxt");
		result = getFileContent("/home/erna/VisionProject/src/vision/src/pb_file/predefined_classes1.txt");
	
	}

	if (net.empty()){
        cout << "init the model net error\n";
        exit(-1);
    }

	if(!result)
	{
        cout << "loading labels failed";
        exit(-1);
	}

	ros::init(argc,argv,"omniVision_detection",ros::init_options::NoSigintHandler);
	ros::NodeHandle nh;
	signal(SIGINT, mySigintHandler);
    image_transport::ImageTransport it(nh);
  	image_transport::Subscriber sub = it.subscribe("camera_omni/image", 100, imageCallback);
	int counter =0;
	double fps;
	double sec;
	time(&start);
    //cout << "Switched to " << (cv::ocl::useOpenCL() ? "OpenCL enabled" : "CPU") << endl;
    //net.setPreferableTarget(DNN_TARGET_OPENCL);

    cout << "Start grabbing, press ESC on Live window to terminate" << endl;
    ros::Rate loop_rate(300);
    while(ros::ok()){
		detect_from_video(frame);	
		// imshow("Framse", frame);
		if (errX != 800 && errY != 800){
			int theta = sudutObjeck - dataYaw;
			objxnow = (float) jarak_asli  * sin(theta/57.2957795);
		    objynow = (float) jarak_asli  * cos(theta/57.2957795);
			objposx = odoX + objxnow;
			objposy = odoY + objynow;

			object.posx = objposx;
			object.posy = objposy;

		}
		flag = 1;
		time(&endb);
   		++counter;
		sec = difftime (endb, start);
	 	fps = counter / sec;
		fprintf(stderr,"MAINFPS : %f\n\n",fps);
		ros::spinOnce();
		if(EXITNOW==true)break;
		loop_rate.sleep();
		waitKey(1);//show output
  }

    frame.release();
	destroyAllWindows();
	
	ros::shutdown();
	return 0;
}