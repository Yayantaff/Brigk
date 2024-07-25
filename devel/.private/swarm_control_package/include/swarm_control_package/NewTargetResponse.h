// Generated by gencpp from file swarm_control_package/NewTargetResponse.msg
// DO NOT EDIT!


#ifndef SWARM_CONTROL_PACKAGE_MESSAGE_NEWTARGETRESPONSE_H
#define SWARM_CONTROL_PACKAGE_MESSAGE_NEWTARGETRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace swarm_control_package
{
template <class ContainerAllocator>
struct NewTargetResponse_
{
  typedef NewTargetResponse_<ContainerAllocator> Type;

  NewTargetResponse_()
    : output_string()  {
    }
  NewTargetResponse_(const ContainerAllocator& _alloc)
    : output_string(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _output_string_type;
  _output_string_type output_string;





  typedef boost::shared_ptr< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> const> ConstPtr;

}; // struct NewTargetResponse_

typedef ::swarm_control_package::NewTargetResponse_<std::allocator<void> > NewTargetResponse;

typedef boost::shared_ptr< ::swarm_control_package::NewTargetResponse > NewTargetResponsePtr;
typedef boost::shared_ptr< ::swarm_control_package::NewTargetResponse const> NewTargetResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::swarm_control_package::NewTargetResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::swarm_control_package::NewTargetResponse_<ContainerAllocator1> & lhs, const ::swarm_control_package::NewTargetResponse_<ContainerAllocator2> & rhs)
{
  return lhs.output_string == rhs.output_string;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::swarm_control_package::NewTargetResponse_<ContainerAllocator1> & lhs, const ::swarm_control_package::NewTargetResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace swarm_control_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "016361cdee7e84e8c448cca68658d16b";
  }

  static const char* value(const ::swarm_control_package::NewTargetResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x016361cdee7e84e8ULL;
  static const uint64_t static_value2 = 0xc448cca68658d16bULL;
};

template<class ContainerAllocator>
struct DataType< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "swarm_control_package/NewTargetResponse";
  }

  static const char* value(const ::swarm_control_package::NewTargetResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string output_string\n"
;
  }

  static const char* value(const ::swarm_control_package::NewTargetResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.output_string);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NewTargetResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::swarm_control_package::NewTargetResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::swarm_control_package::NewTargetResponse_<ContainerAllocator>& v)
  {
    s << indent << "output_string: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.output_string);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SWARM_CONTROL_PACKAGE_MESSAGE_NEWTARGETRESPONSE_H
