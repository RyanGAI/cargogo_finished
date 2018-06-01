// Generated by gencpp from file longitudinal_control_ros_tool/veloservice.msg
// DO NOT EDIT!


#ifndef LONGITUDINAL_CONTROL_ROS_TOOL_MESSAGE_VELOSERVICE_H
#define LONGITUDINAL_CONTROL_ROS_TOOL_MESSAGE_VELOSERVICE_H

#include <ros/service_traits.h>


#include <longitudinal_control_ros_tool/veloserviceRequest.h>
#include <longitudinal_control_ros_tool/veloserviceResponse.h>


namespace longitudinal_control_ros_tool
{

struct veloservice
{

typedef veloserviceRequest Request;
typedef veloserviceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct veloservice
} // namespace longitudinal_control_ros_tool


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::longitudinal_control_ros_tool::veloservice > {
  static const char* value()
  {
    return "50f8ae24fde2172b763492643402bd9d";
  }

  static const char* value(const ::longitudinal_control_ros_tool::veloservice&) { return value(); }
};

template<>
struct DataType< ::longitudinal_control_ros_tool::veloservice > {
  static const char* value()
  {
    return "longitudinal_control_ros_tool/veloservice";
  }

  static const char* value(const ::longitudinal_control_ros_tool::veloservice&) { return value(); }
};


// service_traits::MD5Sum< ::longitudinal_control_ros_tool::veloserviceRequest> should match 
// service_traits::MD5Sum< ::longitudinal_control_ros_tool::veloservice > 
template<>
struct MD5Sum< ::longitudinal_control_ros_tool::veloserviceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::longitudinal_control_ros_tool::veloservice >::value();
  }
  static const char* value(const ::longitudinal_control_ros_tool::veloserviceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::longitudinal_control_ros_tool::veloserviceRequest> should match 
// service_traits::DataType< ::longitudinal_control_ros_tool::veloservice > 
template<>
struct DataType< ::longitudinal_control_ros_tool::veloserviceRequest>
{
  static const char* value()
  {
    return DataType< ::longitudinal_control_ros_tool::veloservice >::value();
  }
  static const char* value(const ::longitudinal_control_ros_tool::veloserviceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::longitudinal_control_ros_tool::veloserviceResponse> should match 
// service_traits::MD5Sum< ::longitudinal_control_ros_tool::veloservice > 
template<>
struct MD5Sum< ::longitudinal_control_ros_tool::veloserviceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::longitudinal_control_ros_tool::veloservice >::value();
  }
  static const char* value(const ::longitudinal_control_ros_tool::veloserviceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::longitudinal_control_ros_tool::veloserviceResponse> should match 
// service_traits::DataType< ::longitudinal_control_ros_tool::veloservice > 
template<>
struct DataType< ::longitudinal_control_ros_tool::veloserviceResponse>
{
  static const char* value()
  {
    return DataType< ::longitudinal_control_ros_tool::veloservice >::value();
  }
  static const char* value(const ::longitudinal_control_ros_tool::veloserviceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LONGITUDINAL_CONTROL_ROS_TOOL_MESSAGE_VELOSERVICE_H