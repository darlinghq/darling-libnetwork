project(libnetwork)

set(DYLIB_INSTALL_NAME "/usr/lib/libnetwork.dylib")
set(DYLIB_COMPAT_VERSION "1.0.0")
set(DYLIB_CURRENT_VERSION "1.0.0")

add_darling_library(libnetwork
	src/nw/nw.m

	src/nw/activity.m
	src/nw/address_endpoint.m
	src/nw/advertise_descriptor.m
	src/nw/array.m
	src/nw/association.m
	src/nw/authentication_challenge.m
	src/nw/authentication_credential.m
	src/nw/authentication_protection_space.m
	src/nw/bonjour_service_endpoint.m
	src/nw/browse_descriptor.m
	src/nw/browse_result.m
	src/nw/browser.m
	src/nw/channel.m
	src/nw/config.m
	src/nw/connection.m
	src/nw/content_context.m
	src/nw/context.m
	src/nw/custom_endpoint.m
	src/nw/data_transfer_report.m
	src/nw/dictionary.m
	src/nw/endpoint_fallback.m
	src/nw/endpoint_flow.m
	src/nw/endpoint_handler.m
	src/nw/endpoint_proxy.m
	src/nw/endpoint_resolver.m
	src/nw/endpoint_transform.m
	src/nw/endpoint.m
	src/nw/error.m
	src/nw/establishment_report.m
	src/nw/ethernet_channel.m
	src/nw/fd_wrapper.m
	src/nw/frame.m
	src/nw/framer.m
	src/nw/hash.m
	src/nw/hostname_endpoint.m
	src/nw/interface_status_monitor.m
	src/nw/interface.m
	src/nw/interpose_flow.m
	src/nw/interpose.m
	src/nw/ip_channel_inbox.m
	src/nw/ip.m
	src/nw/link_info.m
	src/nw/listener_inbox_protocol.m
	src/nw/listener_inbox_socket.m
	src/nw/listener_inbox.m
	src/nw/listener.m
	src/nw/log.m
	src/nw/nat64_prefixes_resolver.m
	src/nw/nat64.m
	src/nw/netcore.m
	src/nw/network_agent.m
	src/nw/network_proxy.m
	src/nw/networkd.m
	src/nw/nexus.m
	src/nw/NW_URL_ENDPOINT_CLS.m
	src/nw/pac_resolver.m
	src/nw/parallel_array.m
	src/nw/parameters.m
	src/nw/path_evaluator.m
	src/nw/path_flow_registration.m
	src/nw/path_flow.m
	src/nw/path_observer.m
	src/nw/path_parameters.m
	src/nw/path.m
	src/nw/protocol_data_array.m
	src/nw/protocol_definition.m
	src/nw/protocol_establishment_report.m
	src/nw/protocol_instance_stub.m
	src/nw/protocol_instance.m
	src/nw/protocol_metadata.m
	src/nw/protocol_options.m
	src/nw/protocol_socket.m
	src/nw/protocol_stack.m
	src/nw/protocol_transform.m
	src/nw/protocol.m
	src/nw/proxy.m
	src/nw/queue.m
	src/nw/quic.m
	src/nw/read_request.m
	src/nw/resolver.m
	src/nw/service_connector.m
	src/nw/shoes_server.m
	src/nw/socks5_connection.m
	src/nw/socks5_server.m
	src/nw/srv_endpoint.m
	src/nw/stubs.m
	src/nw/tcp_connection.m
	src/nw/tcp_listener.m
	src/nw/tcp.m
	src/nw/tls.m
	src/nw/txt_record.m
	src/nw/udp.m
	src/nw/unique_connection_request.m
	src/nw/unique_connection.m
	src/nw/utilities.m
	src/nw/write_request.m
	src/nw/ws_ping_request.m
	src/nw/ws_request.m
	src/nw/ws_response.m
	src/nw/ws.m
)
make_fat(libnetwork)

set_target_properties(libnetwork PROPERTIES
	OUTPUT_NAME "network"
)

target_link_libraries(libnetwork
	system
	objc
	Foundation
)

install(TARGETS libnetwork DESTINATION libexec/darling/usr/lib)
