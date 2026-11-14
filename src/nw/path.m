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

#include <nw/internal/path.h>
#include <nw/internal/stubs.h>

#include <Block.h>
#include <ifaddrs.h>
#include <net/if.h>
#include <netinet/in.h>

// A path is an immutable snapshot of the guest's connectivity. Interfaces are
// not modelled: anything that is not loopback is reported as wired.
@implementation _NW_CONCRETE_IMPL(nw_path)

DARLING_NW_CLASS_STUB;

@end

@interface _NW_CONCRETE(nw_path_monitor) {
	@public
	dispatch_queue_t _queue;
	nw_path_monitor_update_handler_t _update_handler;
	nw_path_monitor_cancel_handler_t _cancel_handler;
	bool _has_required_type;
	nw_interface_type_t _required_type;
	uint32_t _prohibited_types;
	bool _started;
	bool _cancelled;
}

@end

@implementation _NW_CONCRETE_IMPL(nw_path_monitor)

- (void)dealloc {
	if (_queue)
		dispatch_release(_queue);
	if (_update_handler)
		Block_release(_update_handler);
	if (_cancel_handler)
		Block_release(_cancel_handler);
	[super dealloc];
}

DARLING_NW_CLASS_STUB;

@end

#define NW_PATH(_path) ((_NW_CONCRETE_IMPL(nw_path)*)(_path))
#define NW_PATH_MONITOR(_monitor) ((_NW_CONCRETE_IMPL(nw_path_monitor)*)(_monitor))

// Satisfied when an interface that is up and not loopback has a routable
// address, and the monitor's interface type restrictions allow a wired one.
static nw_path_t nw_path_create_for_monitor(_NW_CONCRETE_IMPL(nw_path_monitor)* monitor) {
	_NW_CONCRETE_IMPL(nw_path)* path = [_NW_CONCRETE_IMPL(nw_path) new];
	struct ifaddrs* interfaces = NULL;

	if (getifaddrs(&interfaces) == 0) {
		for (struct ifaddrs* ifa = interfaces; ifa; ifa = ifa->ifa_next) {
			if (!ifa->ifa_addr || !(ifa->ifa_flags & IFF_UP) || (ifa->ifa_flags & IFF_LOOPBACK))
				continue;
			if (ifa->ifa_addr->sa_family == AF_INET) {
				uint32_t address = ntohl(((struct sockaddr_in*)ifa->ifa_addr)->sin_addr.s_addr);
				if ((address >> 16) != 0xa9fe) // 169.254/16 is link-local
					path->_has_ipv4 = true;
			} else if (ifa->ifa_addr->sa_family == AF_INET6) {
				if (!IN6_IS_ADDR_LINKLOCAL(&((struct sockaddr_in6*)ifa->ifa_addr)->sin6_addr))
					path->_has_ipv6 = true;
			}
		}
		freeifaddrs(interfaces);
	} else {
		// The interface list could not be read: do not report a working machine as offline.
		path->_has_ipv4 = true;
	}

	bool wired_allowed = !(monitor->_prohibited_types & (1u << nw_interface_type_wired)) &&
		(!monitor->_has_required_type || monitor->_required_type == nw_interface_type_wired);

	if (!wired_allowed)
		path->_has_ipv4 = path->_has_ipv6 = false;
	path->_status = (path->_has_ipv4 || path->_has_ipv6) ? nw_path_status_satisfied : nw_path_status_unsatisfied;

	return path;
}

DARLING_NW_STUB(nw_path_allows_multipath);
DARLING_NW_STUB(nw_path_assert_agent);
DARLING_NW_STUB(nw_path_assert_required_agents);
DARLING_NW_STUB(nw_path_can_resolve_endpoint);
DARLING_NW_STUB(nw_path_can_support_endpoint);
DARLING_NW_STUB(nw_path_changed_from_previous);
DARLING_NW_STUB(nw_path_copy_advertise_descriptor);
DARLING_NW_STUB(nw_path_copy_all_client_ids);
DARLING_NW_STUB(nw_path_copy_all_local_paths);
DARLING_NW_STUB(nw_path_copy_browse_descriptor);
DARLING_NW_STUB(nw_path_copy_connected_interface);
DARLING_NW_STUB(nw_path_copy_delegate_interface);
DARLING_NW_STUB(nw_path_copy_derived_parameters);
DARLING_NW_STUB(nw_path_copy_description);
DARLING_NW_STUB(nw_path_copy_direct_interface);
DARLING_NW_STUB(nw_path_copy_discovered_endpoints);
DARLING_NW_STUB(nw_path_copy_effective_local_endpoint);
DARLING_NW_STUB(nw_path_copy_effective_remote_endpoint);
DARLING_NW_STUB(nw_path_copy_endpoint);
DARLING_NW_STUB(nw_path_copy_endpoint_from_tlv);
DARLING_NW_STUB(nw_path_copy_flow_divert_token);
DARLING_NW_STUB(nw_path_copy_flow_registration);
DARLING_NW_STUB(nw_path_copy_flows);
DARLING_NW_STUB(nw_path_copy_for_flow_registration);
DARLING_NW_STUB(nw_path_copy_gateways);
DARLING_NW_STUB(nw_path_copy_inactive_agent_uuids);
DARLING_NW_STUB(nw_path_copy_interface);
DARLING_NW_STUB(nw_path_copy_interface_from_cache);
DARLING_NW_STUB(nw_path_copy_netagent_dictionary);
DARLING_NW_STUB(nw_path_copy_parameters);
DARLING_NW_STUB(nw_path_copy_path_for_client);
DARLING_NW_STUB(nw_path_copy_proxy_settings);
DARLING_NW_STUB(nw_path_copy_resolved_endpoints);
DARLING_NW_STUB(nw_path_create_assign_message);
DARLING_NW_STUB(nw_path_create_browse_result);
DARLING_NW_STUB(nw_path_create_from_tlv);
DARLING_NW_STUB(nw_path_create_necp_parameters);
DARLING_NW_STUB(nw_path_create_observer);
DARLING_NW_STUB(nw_path_create_resolve_result);
DARLING_NW_STUB(nw_path_create_static);
DARLING_NW_STUB(nw_path_endpoint_is_always_satisfied);
DARLING_NW_STUB(nw_path_enumerate_browse_options);
DARLING_NW_STUB(nw_path_enumerate_gateways);
DARLING_NW_STUB(nw_path_enumerate_interface_options);
DARLING_NW_STUB(nw_path_enumerate_resolve_options);
DARLING_NW_STUB(nw_path_fallback_is_forced);
DARLING_NW_STUB(nw_path_fallback_is_weak);
DARLING_NW_STUB(nw_path_fallback_should_not_use_timer);
DARLING_NW_STUB(nw_path_fillout_route_stats);
DARLING_NW_STUB(nw_path_get_client_id);
DARLING_NW_STUB(nw_path_get_connected_interface_index);
DARLING_NW_STUB(nw_path_get_custom_ethertype);
DARLING_NW_STUB(nw_path_get_dns_search_domains);
DARLING_NW_STUB(nw_path_get_dns_servers);
DARLING_NW_STUB(nw_path_get_dns_service_id);
DARLING_NW_STUB(nw_path_get_effective_traffic_class);
DARLING_NW_STUB(nw_path_get_fallback_agent);
DARLING_NW_STUB(nw_path_get_fallback_generation);
DARLING_NW_STUB(nw_path_get_fallback_interface_index);
DARLING_NW_STUB(nw_path_get_filter_unit);
DARLING_NW_STUB(nw_path_get_interface_index);
DARLING_NW_STUB(nw_path_get_interface_option_count);
DARLING_NW_STUB(nw_path_get_interface_time_delta);
DARLING_NW_STUB(nw_path_get_ipv4_network_signature);
DARLING_NW_STUB(nw_path_get_ipv6_network_signature);
DARLING_NW_STUB(nw_path_get_maximum_datagram_size);
DARLING_NW_STUB(nw_path_get_maximum_packet_size);
DARLING_NW_STUB(nw_path_get_mtu);
DARLING_NW_STUB(nw_path_get_nexus_agent_uuid);
DARLING_NW_STUB(nw_path_get_nexus_agent_uuid_check_assertion);
DARLING_NW_STUB(nw_path_get_nexus_flow_index);
DARLING_NW_STUB(nw_path_get_nexus_instance);
DARLING_NW_STUB(nw_path_get_nexus_key);
DARLING_NW_STUB(nw_path_get_nexus_protocol_level);
DARLING_NW_STUB(nw_path_get_policy_id);
DARLING_NW_STUB(nw_path_get_private_dns_config_id);
DARLING_NW_STUB(nw_path_get_reason_description);
DARLING_NW_STUB(nw_path_get_recommended_mss);
DARLING_NW_STUB(nw_path_get_rtt_values);
DARLING_NW_STUB(nw_path_get_scoped_interface_index);
DARLING_NW_STUB(nw_path_get_sysctls_region);
DARLING_NW_STUB(nw_path_has_advertise_descriptor);
DARLING_NW_STUB(nw_path_has_browse_descriptor);
DARLING_NW_STUB(nw_path_has_flow_for_nexus_agent);
DARLING_NW_STUB(nw_path_has_proxy_settings);
DARLING_NW_STUB(nw_path_has_unsatisfied_cellular_agent);
DARLING_NW_STUB(nw_path_has_unsatisfied_fallback_agent);
DARLING_NW_STUB(nw_path_has_unsatisfied_route);
DARLING_NW_STUB(nw_path_increment_agent_use_count);
DARLING_NW_STUB(nw_path_ipv4_default_address);
DARLING_NW_STUB(nw_path_ipv6_default_address);
DARLING_NW_STUB(nw_path_is_defunct);
DARLING_NW_STUB(nw_path_is_direct);
DARLING_NW_STUB(nw_path_is_eligible_for_CrazyIvan46);
DARLING_NW_STUB(nw_path_is_equal_inner);
DARLING_NW_STUB(nw_path_is_listener);
DARLING_NW_STUB(nw_path_is_local);
DARLING_NW_STUB(nw_path_is_multilayer_packet_logging_enabled);
DARLING_NW_STUB(nw_path_is_override_constrained);
DARLING_NW_STUB(nw_path_is_override_expensive);
DARLING_NW_STUB(nw_path_is_preferred);
DARLING_NW_STUB(nw_path_is_roaming);
DARLING_NW_STUB(nw_path_is_traffic_mgmt_background);
DARLING_NW_STUB(nw_path_is_tunnelled);
DARLING_NW_STUB(nw_path_is_viable);
DARLING_NW_STUB(nw_path_link_quality_abort);
DARLING_NW_STUB(nw_path_listener_is_interface_specific);
DARLING_NW_STUB(nw_path_listener_uses_nexus_only);
DARLING_NW_STUB(nw_path_may_span_multiple_interfaces);
DARLING_NW_STUB(nw_path_nexus_can_support_user_packet_pool);
DARLING_NW_STUB(nw_path_nexus_should_use_event_ring);
DARLING_NW_STUB(nw_path_override_interface);
DARLING_NW_STUB(nw_path_override_local_endpoint);
DARLING_NW_STUB(nw_path_override_viable);
DARLING_NW_STUB(nw_path_parent_has_forked);
DARLING_NW_STUB(nw_path_parse_necp_parameters);
DARLING_NW_STUB(nw_path_prepare_fork);
DARLING_NW_STUB(nw_path_request_nexus);
DARLING_NW_STUB(nw_path_set_proxy_settings);
DARLING_NW_STUB(nw_path_set_reason);
DARLING_NW_STUB(nw_path_should_fallback);
DARLING_NW_STUB(nw_path_should_probe_connectivity);
DARLING_NW_STUB(nw_path_should_transform);
DARLING_NW_STUB(nw_path_should_use_proxy);
DARLING_NW_STUB(nw_path_status_get_description);
DARLING_NW_STUB(nw_path_supports_browse);
DARLING_NW_STUB(nw_path_trigger_agent);
DARLING_NW_STUB(nw_path_trigger_inactive_cellular_agent_if_necessary);
DARLING_NW_STUB(nw_path_unassert_agent);
DARLING_NW_STUB(nw_path_update_parameters_for_fallback);
DARLING_NW_STUB(nw_path_uses_interface_subtype);
DARLING_NW_STUB(nw_path_uses_nexus);
DARLING_NW_STUB(nw_path_voluntary_agent_matches_address);

int32_t nw_path_get_flow_divert_unit(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return 0;
};

nw_path_status_t nw_path_get_status(nw_path_t path) {
	return path ? NW_PATH(path)->_status : nw_path_status_invalid;
};

nw_path_reason_t nw_path_get_reason(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return nw_path_reason_no_reason;
};

nw_interface_t nw_path_copy_scoped_interface(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return NULL;
};

bool nw_path_is_constrained(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return false;
};

bool nw_path_is_expensive(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return false;
};

bool nw_path_has_ipv4(nw_path_t path) {
	return path && NW_PATH(path)->_has_ipv4;
};

bool nw_path_has_ipv6(nw_path_t path) {
	return path && NW_PATH(path)->_has_ipv6;
};

// DNS configuration is not modelled; a satisfied path can resolve names.
bool nw_path_has_dns(nw_path_t path) {
	return nw_path_get_status(path) == nw_path_status_satisfied;
};

bool nw_path_uses_interface_type(nw_path_t path, nw_interface_type_t interface_type) {
	return interface_type == nw_interface_type_wired && nw_path_get_status(path) == nw_path_status_satisfied;
};

void nw_path_enumerate_interfaces(nw_path_t path, nw_path_enumerate_interfaces_block_t enumerate_block) {
	// interfaces are not modelled, so there is nothing to enumerate
	DARLING_NW_STUB_PRINT;
};

bool nw_path_is_equal(nw_path_t path, nw_path_t other_path) {
	if (path == other_path)
		return true;
	if (!path || !other_path)
		return false;
	return NW_PATH(path)->_status == NW_PATH(other_path)->_status &&
		NW_PATH(path)->_has_ipv4 == NW_PATH(other_path)->_has_ipv4 &&
		NW_PATH(path)->_has_ipv6 == NW_PATH(other_path)->_has_ipv6;
};

bool nw_path_is_flow_divert(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return false;
}

bool nw_path_get_vpn_config_id(nw_path_t path, uuid_t *uuid) {
	DARLING_NW_STUB_PRINT;
	return false;
}

bool nw_path_is_per_app_vpn(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return false;
}

nw_path_monitor_t nw_path_monitor_create(void) {
	return [_NW_CONCRETE_IMPL(nw_path_monitor) new];
};

nw_path_monitor_t nw_path_monitor_create_with_type(nw_interface_type_t required_interface_type) {
	_NW_CONCRETE_IMPL(nw_path_monitor)* monitor = [_NW_CONCRETE_IMPL(nw_path_monitor) new];
	monitor->_has_required_type = true;
	monitor->_required_type = required_interface_type;
	return monitor;
};

void nw_path_monitor_prohibit_interface_type(nw_path_monitor_t monitor, nw_interface_type_t interface_type) {
	if (!monitor || (unsigned int)interface_type >= 32)
		return;
	@synchronized (monitor) {
		NW_PATH_MONITOR(monitor)->_prohibited_types |= 1u << interface_type;
	}
};

void nw_path_monitor_set_queue(nw_path_monitor_t monitor, dispatch_queue_t queue) {
	if (!monitor || !queue)
		return;
	@synchronized (monitor) {
		_NW_CONCRETE_IMPL(nw_path_monitor)* m = NW_PATH_MONITOR(monitor);
		if (m->_started)
			return;
		dispatch_retain(queue);
		if (m->_queue)
			dispatch_release(m->_queue);
		m->_queue = queue;
	}
};

void nw_path_monitor_set_update_handler(nw_path_monitor_t monitor, nw_path_monitor_update_handler_t update_handler) {
	if (!monitor)
		return;
	@synchronized (monitor) {
		_NW_CONCRETE_IMPL(nw_path_monitor)* m = NW_PATH_MONITOR(monitor);
		if (m->_cancelled)
			return;
		if (m->_update_handler)
			Block_release(m->_update_handler);
		m->_update_handler = update_handler ? Block_copy(update_handler) : NULL;
	}
};

void nw_path_monitor_set_cancel_handler(nw_path_monitor_t monitor, nw_path_monitor_cancel_handler_t cancel_handler) {
	if (!monitor)
		return;
	@synchronized (monitor) {
		_NW_CONCRETE_IMPL(nw_path_monitor)* m = NW_PATH_MONITOR(monitor);
		if (m->_cancelled)
			return;
		if (m->_cancel_handler)
			Block_release(m->_cancel_handler);
		m->_cancel_handler = cancel_handler ? Block_copy(cancel_handler) : NULL;
	}
};

// Delivers the current path once, on the monitor's queue. Later network
// changes are not reported: Darling has no network change notifications.
void nw_path_monitor_start(nw_path_monitor_t monitor) {
	if (!monitor)
		return;
	_NW_CONCRETE_IMPL(nw_path_monitor)* m = NW_PATH_MONITOR(monitor);
	dispatch_queue_t queue;

	@synchronized (monitor) {
		// like on macOS, a monitor without a queue cannot be started
		if (!m->_queue || m->_started || m->_cancelled)
			return;
		m->_started = true;
		queue = m->_queue;
	}

	// the block keeps the monitor (and with it the queue) alive until it has run
	dispatch_async(queue, ^{
		nw_path_monitor_update_handler_t update_handler = NULL;

		@synchronized (m) {
			if (!m->_cancelled && m->_update_handler)
				update_handler = Block_copy(m->_update_handler);
		}
		if (!update_handler)
			return;

		nw_path_t path = nw_path_create_for_monitor(m);
		update_handler(path);
		[path release];
		Block_release(update_handler);
	});
};

// No update handler is called once this returns, except one already running.
// The cancel handler then runs once on the queue and both handlers are dropped,
// which breaks the usual retain cycle between a handler and the monitor's owner.
void nw_path_monitor_cancel(nw_path_monitor_t monitor) {
	if (!monitor)
		return;
	_NW_CONCRETE_IMPL(nw_path_monitor)* m = NW_PATH_MONITOR(monitor);
	nw_path_monitor_update_handler_t update_handler;
	nw_path_monitor_cancel_handler_t cancel_handler;
	dispatch_queue_t queue;

	@synchronized (monitor) {
		if (m->_cancelled)
			return;
		m->_cancelled = true;
		update_handler = m->_update_handler;
		cancel_handler = m->_cancel_handler;
		m->_update_handler = NULL;
		m->_cancel_handler = NULL;
		queue = m->_queue;
	}

	if (queue) {
		dispatch_async(queue, ^{
			if (cancel_handler) {
				cancel_handler();
				Block_release(cancel_handler);
			}
			if (update_handler)
				Block_release(update_handler);
			(void)m; // keeps the queue alive until the cancel handler has run
		});
	} else {
		if (cancel_handler)
			Block_release(cancel_handler);
		if (update_handler)
			Block_release(update_handler);
	}
};
