// *********************************************************
//
// File autogenerated for the lateral_control_ros_tool package
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
#include <lateral_control_ros_tool/LateralControllerConfig.h>
#else
struct LateralControllerConfig{};
#endif


namespace lateral_control_ros_tool {

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

struct LateralControllerParameters {

  using Config = LateralControllerConfig;

  LateralControllerParameters(const ros::NodeHandle& private_node_handle)
  : globalNamespace{"/"},
    privateNamespace{private_node_handle.getNamespace() + "/"},
    nodeName{getNodeName(private_node_handle)} {}

  void fromParamServer(){
    getParam(privateNamespace + "msg_queue_size", msg_queue_size, int{5});
    getParam(privateNamespace + "verbosity", verbosity, std::string{"info"});
    getParam(privateNamespace + "path_topic", path_topic, std::string{"/path_follower/path"});
    getParam(privateNamespace + "motor_topic", motor_topic, std::string{"/motor_interface/motor_command"});
    getParam(privateNamespace + "servo_command_topic", servo_command_topic, std::string{"servo_command"});
    getParam(privateNamespace + "control_loop_rate", control_loop_rate, double{50});
    getParam(privateNamespace + "vehiclepose_rate", vehiclepose_rate, double{30});
    getParam(privateNamespace + "map_frame_id", map_frame_id, std::string{"world"});
    getParam(privateNamespace + "vehicle_frame_id", vehicle_frame_id, std::string{"vehicle_rear_axle"});
    getParam(privateNamespace + "kos_shift", kos_shift, double{0.15});
    getParam(privateNamespace + "distance_far", distance_far, double{0.2});
    getParam(privateNamespace + "wheel_base", wheel_base, double{0.52});
    getParam(privateNamespace + "k_ang", k_ang, double{5.0});
    getParam(privateNamespace + "k_dist", k_dist, double{2.5});
    getParam(privateNamespace + "k_pd_omega", k_pd_omega, double{0.0});
    getParam(privateNamespace + "k_pd_velo", k_pd_velo, double{0.0});
    getParam(privateNamespace + "k_pd_dist", k_pd_dist, double{0.0});
    getParam(privateNamespace + "k_pd_phi", k_pd_phi, double{0.0});
    getParam(privateNamespace + "max_steering_angle", max_steering_angle, double{0.7});
    getParam(privateNamespace + "steering_angle_offset", steering_angle_offset, double{0.0});

    testMin<int>(privateNamespace + "msg_queue_size", msg_queue_size, 1);
    testMin<double>(privateNamespace + "control_loop_rate", control_loop_rate, 10.0);
    testMax<double>(privateNamespace + "control_loop_rate", control_loop_rate, 200.0);
    testMin<double>(privateNamespace + "vehiclepose_rate", vehiclepose_rate, 10.0);
    testMax<double>(privateNamespace + "vehiclepose_rate", vehiclepose_rate, 20);
    testMin<double>(privateNamespace + "kos_shift", kos_shift, 0);
    testMax<double>(privateNamespace + "kos_shift", kos_shift, 1);
    testMin<double>(privateNamespace + "distance_far", distance_far, 0);
    testMax<double>(privateNamespace + "distance_far", distance_far, 1);
    testMin<double>(privateNamespace + "wheel_base", wheel_base, 0);
    testMax<double>(privateNamespace + "wheel_base", wheel_base, 1);
    testMin<double>(privateNamespace + "k_ang", k_ang, 0);
    testMax<double>(privateNamespace + "k_ang", k_ang, 10);
    testMin<double>(privateNamespace + "k_dist", k_dist, 0);
    testMax<double>(privateNamespace + "k_dist", k_dist, 10);
    testMin<double>(privateNamespace + "k_pd_omega", k_pd_omega, 0);
    testMax<double>(privateNamespace + "k_pd_omega", k_pd_omega, 20);
    testMin<double>(privateNamespace + "k_pd_velo", k_pd_velo, 0);
    testMax<double>(privateNamespace + "k_pd_velo", k_pd_velo, 10);
    testMin<double>(privateNamespace + "k_pd_dist", k_pd_dist, 0);
    testMax<double>(privateNamespace + "k_pd_dist", k_pd_dist, 10);
    testMin<double>(privateNamespace + "k_pd_phi", k_pd_phi, 0);
    testMax<double>(privateNamespace + "k_pd_phi", k_pd_phi, 10);
    testMin<double>(privateNamespace + "steering_angle_offset", steering_angle_offset, -0.2);
    testMax<double>(privateNamespace + "steering_angle_offset", steering_angle_offset, 0.2);
  ROS_DEBUG_STREAM(*this);
  }

  void fromConfig(const Config& config, const uint32_t level = 0){
#ifdef DYNAMIC_RECONFIGURE_FOUND
    kos_shift = config.kos_shift;
    distance_far = config.distance_far;
    wheel_base = config.wheel_base;
    k_ang = config.k_ang;
    k_dist = config.k_dist;
    k_pd_omega = config.k_pd_omega;
    k_pd_velo = config.k_pd_velo;
    k_pd_dist = config.k_pd_dist;
    k_pd_phi = config.k_pd_phi;
    steering_angle_offset = config.steering_angle_offset;
#else
  ROS_FATAL_STREAM("dynamic_reconfigure was not found during compilation. So fromConfig() is not available. Please recompile with dynamic_reconfigure.");
  std::exit(EXIT_FAILURE);
#endif
  }

  friend std::ostream& operator<<(std::ostream& os, const LateralControllerParameters& p)
  {
    os << "[" << p.nodeName << "]\nNode " << p.nodeName << " has the following parameters:\n"
      << "	" << p.privateNamespace << "msg_queue_size:" << p.msg_queue_size << "\n"
      << "	" << p.privateNamespace << "verbosity:" << p.verbosity << "\n"
      << "	" << p.privateNamespace << "path_topic:" << p.path_topic << "\n"
      << "	" << p.privateNamespace << "motor_topic:" << p.motor_topic << "\n"
      << "	" << p.privateNamespace << "servo_command_topic:" << p.servo_command_topic << "\n"
      << "	" << p.privateNamespace << "control_loop_rate:" << p.control_loop_rate << "\n"
      << "	" << p.privateNamespace << "vehiclepose_rate:" << p.vehiclepose_rate << "\n"
      << "	" << p.privateNamespace << "map_frame_id:" << p.map_frame_id << "\n"
      << "	" << p.privateNamespace << "vehicle_frame_id:" << p.vehicle_frame_id << "\n"
      << "	" << p.privateNamespace << "kos_shift:" << p.kos_shift << "\n"
      << "	" << p.privateNamespace << "distance_far:" << p.distance_far << "\n"
      << "	" << p.privateNamespace << "wheel_base:" << p.wheel_base << "\n"
      << "	" << p.privateNamespace << "k_ang:" << p.k_ang << "\n"
      << "	" << p.privateNamespace << "k_dist:" << p.k_dist << "\n"
      << "	" << p.privateNamespace << "k_pd_omega:" << p.k_pd_omega << "\n"
      << "	" << p.privateNamespace << "k_pd_velo:" << p.k_pd_velo << "\n"
      << "	" << p.privateNamespace << "k_pd_dist:" << p.k_pd_dist << "\n"
      << "	" << p.privateNamespace << "k_pd_phi:" << p.k_pd_phi << "\n"
      << "	" << p.privateNamespace << "max_steering_angle:" << p.max_steering_angle << "\n"
      << "	" << p.privateNamespace << "steering_angle_offset:" << p.steering_angle_offset << "\n"
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
  std::string path_topic; /*!< Topicname for path subscriber */
  std::string motor_topic; /*!< Topicname for motor command subscriber */
  std::string servo_command_topic; /*!< Topicname for servo command publisher */
  double control_loop_rate; /*!< controllers loop rate */
  double vehiclepose_rate; /*!< vehicle pose loop rate */
  std::string map_frame_id; /*!< frame if of the map frame */
  std::string vehicle_frame_id; /*!< frame if of the vehicle frame (rear axle) */
  double kos_shift; /*!< shift kos to point which stays on trajectory */
  double distance_far; /*!< distance of far lookahead point to closet point */
  double wheel_base; /*!< wheelbase of anicar */
  double k_ang; /*!< Angle weight */
  double k_dist; /*!< Dist weight */
  double k_pd_omega; /*!< pd controller omega weight */
  double k_pd_velo; /*!< pd controller velocity weight */
  double k_pd_dist; /*!< pd controller distance weight */
  double k_pd_phi; /*!< pd controller angle weight */
  double max_steering_angle; /*!< the maximal possible steering nalge (rad) */
  double steering_angle_offset; /*!< steering nalge offset (rad) */

  private:
    const std::string globalNamespace;
    const std::string privateNamespace;
    const std::string nodeName;
};

} // namespace lateral_control_ros_tool