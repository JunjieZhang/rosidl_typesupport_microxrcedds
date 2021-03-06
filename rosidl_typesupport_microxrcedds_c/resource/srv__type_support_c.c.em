// generated from rosidl_typesupport_microxrcedds_c/resource/srv__type_support_c.c.em
// generated code does not contain a copyright notice
@#######################################################################
@# EmPy template for generating <srv>__type_support_c.cpp files
@#
@# Context:
@#  - spec (rosidl_parser.ServiceSpecification)
@#    Parsed specification of the .srv file
@#  - get_header_filename_from_msg_name (function)
@#######################################################################
@
#include "@(spec.pkg_name)/srv/@(get_header_filename_from_msg_name(spec.srv_name))__rosidl_typesupport_microxrcedds_c.h"

// Provides the rosidl_typesupport_microxrcedds_c__identifier symbol declaration.
#include "rosidl_typesupport_microxrcedds_shared/identifier.h"
// Provides the definition of the servicetype_support_callbacks_t struct.
#include "rosidl_typesupport_microxrcedds_shared/service_type_support.h"


#include "@(spec.pkg_name)/msg/rosidl_typesupport_microxrcedds_c__visibility_control.h"
@{req_header_file_name = get_header_filename_from_msg_name(spec.srv_name + '__request')}@
@{res_header_file_name = get_header_filename_from_msg_name(spec.srv_name + '__response')}@
#include "@(spec.pkg_name)/srv/@(req_header_file_name).h"
#include "@(spec.pkg_name)/srv/@(res_header_file_name).h"

#include "@(spec.pkg_name)/srv/@(get_header_filename_from_msg_name(spec.srv_name + '_Request'))__rosidl_typesupport_microxrcedds_c.h"
#include "@(spec.pkg_name)/srv/@(get_header_filename_from_msg_name(spec.srv_name + '_Response'))__rosidl_typesupport_microxrcedds_c.h"

#if defined(__cplusplus)
extern "C"
{
#endif

static service_type_support_callbacks_t callbacks = {
  "@(spec.pkg_name)",
  "@(spec.srv_name)",
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_microxrcedds_c, @(spec.pkg_name), srv, @(spec.srv_name)_Request),
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_microxrcedds_c, @(spec.pkg_name), srv, @(spec.srv_name)_Response)
};

static rosidl_service_type_support_t handle = {
  ROSIDL_TYPESUPPORT_MICROXRCEDDS_C__IDENTIFIER_VALUE,
  &callbacks,
  get_service_typesupport_handle_function,
};

const rosidl_service_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__SERVICE_SYMBOL_NAME(rosidl_typesupport_microxrcedds_c, @(spec.pkg_name), @(spec.srv_name))()
{
  return &handle;
}

#if defined(__cplusplus)
}
#endif
