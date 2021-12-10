// Generated by gencpp from file interbotix_sdk/FirmwareGains.msg
// DO NOT EDIT!


#ifndef INTERBOTIX_SDK_MESSAGE_FIRMWAREGAINS_H
#define INTERBOTIX_SDK_MESSAGE_FIRMWAREGAINS_H

#include <ros/service_traits.h>


#include <interbotix_sdk/FirmwareGainsRequest.h>
#include <interbotix_sdk/FirmwareGainsResponse.h>


namespace interbotix_sdk
{

struct FirmwareGains
{

typedef FirmwareGainsRequest Request;
typedef FirmwareGainsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FirmwareGains
} // namespace interbotix_sdk


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::interbotix_sdk::FirmwareGains > {
  static const char* value()
  {
    return "1a3c17ff4352d3a3bf5d6c64d4bd58a6";
  }

  static const char* value(const ::interbotix_sdk::FirmwareGains&) { return value(); }
};

template<>
struct DataType< ::interbotix_sdk::FirmwareGains > {
  static const char* value()
  {
    return "interbotix_sdk/FirmwareGains";
  }

  static const char* value(const ::interbotix_sdk::FirmwareGains&) { return value(); }
};


// service_traits::MD5Sum< ::interbotix_sdk::FirmwareGainsRequest> should match
// service_traits::MD5Sum< ::interbotix_sdk::FirmwareGains >
template<>
struct MD5Sum< ::interbotix_sdk::FirmwareGainsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::interbotix_sdk::FirmwareGains >::value();
  }
  static const char* value(const ::interbotix_sdk::FirmwareGainsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::interbotix_sdk::FirmwareGainsRequest> should match
// service_traits::DataType< ::interbotix_sdk::FirmwareGains >
template<>
struct DataType< ::interbotix_sdk::FirmwareGainsRequest>
{
  static const char* value()
  {
    return DataType< ::interbotix_sdk::FirmwareGains >::value();
  }
  static const char* value(const ::interbotix_sdk::FirmwareGainsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::interbotix_sdk::FirmwareGainsResponse> should match
// service_traits::MD5Sum< ::interbotix_sdk::FirmwareGains >
template<>
struct MD5Sum< ::interbotix_sdk::FirmwareGainsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::interbotix_sdk::FirmwareGains >::value();
  }
  static const char* value(const ::interbotix_sdk::FirmwareGainsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::interbotix_sdk::FirmwareGainsResponse> should match
// service_traits::DataType< ::interbotix_sdk::FirmwareGains >
template<>
struct DataType< ::interbotix_sdk::FirmwareGainsResponse>
{
  static const char* value()
  {
    return DataType< ::interbotix_sdk::FirmwareGains >::value();
  }
  static const char* value(const ::interbotix_sdk::FirmwareGainsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // INTERBOTIX_SDK_MESSAGE_FIRMWAREGAINS_H
