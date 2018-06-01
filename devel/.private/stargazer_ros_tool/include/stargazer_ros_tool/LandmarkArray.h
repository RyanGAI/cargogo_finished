// Generated by gencpp from file stargazer_ros_tool/LandmarkArray.msg
// DO NOT EDIT!


#ifndef STARGAZER_ROS_TOOL_MESSAGE_LANDMARKARRAY_H
#define STARGAZER_ROS_TOOL_MESSAGE_LANDMARKARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <stargazer_ros_tool/Landmark.h>

namespace stargazer_ros_tool
{
template <class ContainerAllocator>
struct LandmarkArray_
{
  typedef LandmarkArray_<ContainerAllocator> Type;

  LandmarkArray_()
    : header()
    , landmarks()  {
    }
  LandmarkArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , landmarks(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::stargazer_ros_tool::Landmark_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::stargazer_ros_tool::Landmark_<ContainerAllocator> >::other >  _landmarks_type;
  _landmarks_type landmarks;





  typedef boost::shared_ptr< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> const> ConstPtr;

}; // struct LandmarkArray_

typedef ::stargazer_ros_tool::LandmarkArray_<std::allocator<void> > LandmarkArray;

typedef boost::shared_ptr< ::stargazer_ros_tool::LandmarkArray > LandmarkArrayPtr;
typedef boost::shared_ptr< ::stargazer_ros_tool::LandmarkArray const> LandmarkArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace stargazer_ros_tool

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'stargazer_ros_tool': ['/home/kal5-1/cargogo/src/stargazer_ros_tool/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1f301d284612d34647e102aa11cd2d8c";
  }

  static const char* value(const ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1f301d284612d346ULL;
  static const uint64_t static_value2 = 0x47e102aa11cd2d8cULL;
};

template<class ContainerAllocator>
struct DataType< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "stargazer_ros_tool/LandmarkArray";
  }

  static const char* value(const ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
Landmark[] landmarks\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: stargazer_ros_tool/Landmark\n\
Header header\n\
int32 id\n\
LandmarkPoint[] corner_points\n\
LandmarkPoint[] id_points\n\
================================================================================\n\
MSG: stargazer_ros_tool/LandmarkPoint\n\
uint8 row\n\
uint8 col\n\
\n\
uint16 u\n\
uint16 v\n\
";
  }

  static const char* value(const ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.landmarks);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LandmarkArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::stargazer_ros_tool::LandmarkArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "landmarks[]" << std::endl;
    for (size_t i = 0; i < v.landmarks.size(); ++i)
    {
      s << indent << "  landmarks[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::stargazer_ros_tool::Landmark_<ContainerAllocator> >::stream(s, indent + "    ", v.landmarks[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // STARGAZER_ROS_TOOL_MESSAGE_LANDMARKARRAY_H