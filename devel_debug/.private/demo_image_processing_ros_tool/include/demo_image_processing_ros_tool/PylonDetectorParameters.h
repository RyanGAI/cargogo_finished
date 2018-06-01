// *********************************************************
//
// File autogenerated for the demo_image_processing_ros_tool package
// by the rosparam_handler package.
// Please do not edit.
//
// ********************************************************/

#pragma once

#include <stdlib.h>
#include <string>
#include <limits>
#include <ros/param.h>
#include <ros/node_handle.h>
#ifdef DYNAMIC_RECONFIGURE_FOUND
#include <demo_image_processing_ros_tool/PylonDetectorConfig.h>
#else
struct PylonDetectorConfig{};
#endif


namespace demo_image_processing_ros_tool {

inline std::string getNodeName(const ros::NodeHandle& privateNodeHandle){
    std::string name_space = privateNodeHandle.getNamespace();
    std::stringstream tempString(name_space);
    std::string name;
    while(std::getline(tempString, name, '/')){;}
    return name;
}

template <typename T>
std::ostream& operator<< (std::ostream& out, const std::vector<T>& v) {
  if ( !v.empty() ) {
    out << '[';
    std::copy (v.begin(), v.end(), std::ostream_iterator<T>(out, ", "));
    out << "\b\b]";
  }
  return out;
}

template<typename T1, typename T2>
std::ostream &operator<<(std::ostream &stream, const std::map<T1, T2>& map)
{
  stream << '{';
  for (typename std::map<T1, T2>::const_iterator it = map.begin();
       it != map.end();
       ++it)
    {
      stream << (*it).first << " --> " << (*it).second << ", ";
    }
  stream << '}';
  return stream;
}

struct PylonDetectorParameters {

  using Config = PylonDetectorConfig;

  PylonDetectorParameters(const ros::NodeHandle& private_node_handle)
  : globalNamespace{"/"},
    privateNamespace{private_node_handle.getNamespace() + "/"},
    nodeName{getNodeName(private_node_handle)} {}

  void fromParamServer(){
    getParam(privateNamespace + "msg_queue_size", msg_queue_size, int{5});
    getParam(privateNamespace + "verbosity", verbosity, std::string{"info"});
    getParam(privateNamespace + "topic_publisher", topic_publisher, std::string{"/image_out"});
    getParam(privateNamespace + "motor_command_topic", motor_command_topic, std::string{"motor_command"});
    getParam(privateNamespace + "servo_command_topic", servo_command_topic, std::string{"servo_command"});
    getParam(privateNamespace + "topic_subscriber", topic_subscriber, std::string{"/image_in"});
    getParam(privateNamespace + "threshold", threshold, int{350});
    getParam(privateNamespace + "h_min", h_min, int{0});
    getParam(privateNamespace + "h_max", h_max, int{5});
    getParam(privateNamespace + "s_min", s_min, int{150});
    getParam(privateNamespace + "s_max", s_max, int{255});
    getParam(privateNamespace + "v_min", v_min, int{50});
    getParam(privateNamespace + "v_max", v_max, int{255});
    getParam(privateNamespace + "median_blur_kernel_size", median_blur_kernel_size, int{3});

    testMin<int>(privateNamespace + "msg_queue_size", msg_queue_size, 1);
    testMin<int>(privateNamespace + "threshold", threshold, 0);
    testMax<int>(privateNamespace + "threshold", threshold, 5000);
    testMin<int>(privateNamespace + "h_min", h_min, 0);
    testMax<int>(privateNamespace + "h_min", h_min, 255);
    testMin<int>(privateNamespace + "h_max", h_max, 0);
    testMax<int>(privateNamespace + "h_max", h_max, 255);
    testMin<int>(privateNamespace + "s_min", s_min, 0);
    testMax<int>(privateNamespace + "s_min", s_min, 255);
    testMin<int>(privateNamespace + "s_max", s_max, 0);
    testMax<int>(privateNamespace + "s_max", s_max, 255);
    testMin<int>(privateNamespace + "v_min", v_min, 0);
    testMax<int>(privateNamespace + "v_min", v_min, 255);
    testMin<int>(privateNamespace + "v_max", v_max, 0);
    testMax<int>(privateNamespace + "v_max", v_max, 255);
    testMin<int>(privateNamespace + "median_blur_kernel_size", median_blur_kernel_size, 1);
    testMax<int>(privateNamespace + "median_blur_kernel_size", median_blur_kernel_size, 50);
  ROS_DEBUG_STREAM(*this);
  }

  void fromConfig(const Config& config, const uint32_t level = 0){
#ifdef DYNAMIC_RECONFIGURE_FOUND
    threshold = config.threshold;
    h_min = config.h_min;
    h_max = config.h_max;
    s_min = config.s_min;
    s_max = config.s_max;
    v_min = config.v_min;
    v_max = config.v_max;
    median_blur_kernel_size = config.median_blur_kernel_size;
#else
  ROS_FATAL_STREAM("dynamic_reconfigure was not found during compilation. So fromConfig() is not available. Please recompile with dynamic_reconfigure.");
  std::exit(EXIT_FAILURE);
#endif
  }

  friend std::ostream& operator<<(std::ostream& os, const PylonDetectorParameters& p)
  {
    os << "[" << p.nodeName << "]\nNode " << p.nodeName << " has the following parameters:\n"
      << "	" << p.privateNamespace << "msg_queue_size:" << p.msg_queue_size << "\n"
      << "	" << p.privateNamespace << "verbosity:" << p.verbosity << "\n"
      << "	" << p.privateNamespace << "topic_publisher:" << p.topic_publisher << "\n"
      << "	" << p.privateNamespace << "motor_command_topic:" << p.motor_command_topic << "\n"
      << "	" << p.privateNamespace << "servo_command_topic:" << p.servo_command_topic << "\n"
      << "	" << p.privateNamespace << "topic_subscriber:" << p.topic_subscriber << "\n"
      << "	" << p.privateNamespace << "threshold:" << p.threshold << "\n"
      << "	" << p.privateNamespace << "h_min:" << p.h_min << "\n"
      << "	" << p.privateNamespace << "h_max:" << p.h_max << "\n"
      << "	" << p.privateNamespace << "s_min:" << p.s_min << "\n"
      << "	" << p.privateNamespace << "s_max:" << p.s_max << "\n"
      << "	" << p.privateNamespace << "v_min:" << p.v_min << "\n"
      << "	" << p.privateNamespace << "v_max:" << p.v_max << "\n"
      << "	" << p.privateNamespace << "median_blur_kernel_size:" << p.median_blur_kernel_size << "\n"
;
    return os;
  }

  void missingParamsWarning(){
    ROS_WARN_STREAM("[" << nodeName << "]\nThe following parameters do not have default values and need to be specified:\n"
    );
  }

  template <typename T>
  void getParam(const std::string key, T& val) {
    if (!ros::param::has(key)) {
      ROS_ERROR_STREAM("Parameter '" << key << "' is not defined.");
      missingParamsWarning();
      std::exit(EXIT_FAILURE);
    } else if (!ros::param::get(key, val)) {
      ROS_ERROR_STREAM("Could not retrieve parameter'" << key << "'. Does it have a different type?");
      missingParamsWarning();
      std::exit(EXIT_FAILURE);
    }
  }

  template <typename T>
  void getParam(const std::string key, T& val, const T& defaultValue) {
    if (!ros::param::has(key)) {
        val = defaultValue;
        ros::param::set(key, defaultValue);
        ROS_INFO_STREAM("Parameter "<<key<<" is not yet set. Setting default value.");
    } else if (!ros::param::get(key, val)) {
        ROS_WARN_STREAM("Parameter "<<key<<" is set, but has a different type. Using default value instead.");
        val = defaultValue;
	}
  }

  void testConstParam(const std::string key){
    if (ros::param::has(key)) {
      ROS_WARN_STREAM("Parameter " << key << "' was set on the parameter server eventhough it was defined to be constant.");
    }
  }

  template<typename T>
  void testMin(const std::string key, T& val, T min = std::numeric_limits<T>::min()){
    if (val < min){
      ROS_WARN_STREAM("Value of " << val << " for " << key << " is smaller than minimal allowed value. Correcting value to min=" << min);
      val = min;
    }
  }

  template<typename T>
  void testMax(const std::string key, T& val, T max = std::numeric_limits<T>::max()){
    if (val > max){
      ROS_WARN_STREAM("Value of " << val << " for " << key << " is greater than maximal allowed. Correcting value to max=" << max);
      val = max;
    }
  }

    int msg_queue_size; /*!< Queusize for publisher */
  std::string verbosity; /*!< Set logger level for this node */
  std::string topic_publisher; /*!< Image publisher topic name */
  std::string motor_command_topic; /*!< MotorCommand topic name */
  std::string servo_command_topic; /*!< ServoCommand topic name */
  std::string topic_subscriber; /*!< Image subscriber topic name */
  int threshold; /*!< Number of pixels to assume detected pylon */
  int h_min; /*!< Minimum hue value */
  int h_max; /*!< Maximum hue value */
  int s_min; /*!< Minimum saturation value */
  int s_max; /*!< Maximum saturation value */
  int v_min; /*!< Minimum value value */
  int v_max; /*!< Maximum value value */
  int median_blur_kernel_size; /*!< Maximum value value */

  private:
    const std::string globalNamespace;
    const std::string privateNamespace;
    const std::string nodeName;
};

} // namespace demo_image_processing_ros_tool
