/*
 This file is part of Darling.

 Copyright (C) 2020 Lubos Dolezel

 Darling is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 Darling is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with Darling.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef _NW_INTERNAL_H_
#define _NW_INTERNAL_H_

#include <nw/nw.h>

#include <nw/internal/activity.h>
#include <nw/internal/address_endpoint.h>
#include <nw/internal/advertise_descriptor.h>
#include <nw/internal/association.h>
#include <nw/internal/authentication_challenge.h>
#include <nw/internal/authentication_credential.h>
#include <nw/internal/authentication_protection_space.h>
#include <nw/internal/bonjour_service_endpoint.h>
#include <nw/internal/browse_descriptor.h>
#include <nw/internal/browse_result.h>
#include <nw/internal/browser.h>
#include <nw/internal/connection.h>
#include <nw/internal/content_context.h>
#include <nw/internal/context.h>
#include <nw/internal/custom_endpoint.h>
#include <nw/internal/data_transfer_report.h>
#include <nw/internal/endpoint.h>
#include <nw/internal/endpoint_fallback.h>
#include <nw/internal/endpoint_flow.h>
#include <nw/internal/endpoint_handler.h>
#include <nw/internal/endpoint_mode_handler.h>
#include <nw/internal/endpoint_proxy.h>
#include <nw/internal/endpoint_resolver.h>
#include <nw/internal/endpoint_transform.h>
#include <nw/internal/error.h>
#include <nw/internal/establishment_report.h>
#include <nw/internal/ethernet_channel.h>
#include <nw/internal/fd_wrapper.h>
#include <nw/internal/framer.h>
#include <nw/internal/hostname_endpoint.h>
#include <nw/internal/interface.h>
#include <nw/internal/interface_status_monitor.h>
#include <nw/internal/interpose.h>
#include <nw/internal/link_info.h>
#include <nw/internal/listener.h>
#include <nw/internal/nat64_prefixes_resolver.h>
#include <nw/internal/pac_resolver.h>
#include <nw/internal/parameters.h>
#include <nw/internal/path.h>
#include <nw/internal/path_evaluator.h>
#include <nw/internal/path_flow.h>
#include <nw/internal/path_flow_registration.h>
#include <nw/internal/path_observer.h>
#include <nw/internal/path_parameters.h>
#include <nw/internal/protocol_data_array.h>
#include <nw/internal/protocol_definition.h>
#include <nw/internal/protocol_establishment_report.h>
#include <nw/internal/protocol_handle.h>
#include <nw/internal/protocol_instance.h>
#include <nw/internal/protocol_instance_stub.h>
#include <nw/internal/protocol_metadata.h>
#include <nw/internal/protocol_options.h>
#include <nw/internal/protocol_stack.h>
#include <nw/internal/protocol_transform.h>
#include <nw/internal/read_request.h>
#include <nw/internal/resolver.h>
#include <nw/internal/service_connector.h>
#include <nw/internal/socks5_connection.h>
#include <nw/internal/socks5_server.h>
#include <nw/internal/srv_endpoint.h>
#include <nw/internal/tcp_connection.h>
#include <nw/internal/txt_record.h>
#include <nw/internal/unique_connection.h>
#include <nw/internal/unique_connection_request.h>
#include <nw/internal/write_request.h>
#include <nw/internal/ws_ping_request.h>
#include <nw/internal/ws_request.h>
#include <nw/internal/ws_response.h>

#endif // _NW_INTERNAL_H_
