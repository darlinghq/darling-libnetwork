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

#include <nw/tls.h>
#include <nw/internal/stubs.h>
DARLING_NW_STUB(nw_tls_copy_peer_certificates);
DARLING_NW_STUB(nw_tls_copy_sec_protocol_metadata);
DARLING_NW_STUB(nw_tls_create_options);
DARLING_NW_STUB(nw_tls_create_peer_acceptable_distinguished_names);
DARLING_NW_STUB(nw_tls_create_peer_trust);
DARLING_NW_STUB(nw_tls_create_secret);
DARLING_NW_STUB(nw_tls_create_secret_with_context);
DARLING_NW_STUB(nw_tls_fetch_peer_public_key);
DARLING_NW_STUB(nw_tls_get_fallback);
DARLING_NW_STUB(nw_tls_get_false_start);
DARLING_NW_STUB(nw_tls_get_maximum_protocol_version);
DARLING_NW_STUB(nw_tls_get_maximum_ssl_protocol);
DARLING_NW_STUB(nw_tls_get_minimum_protocol_version);
DARLING_NW_STUB(nw_tls_get_minimum_ssl_protocol);
DARLING_NW_STUB(nw_tls_get_negotiated_cipher_spec);
DARLING_NW_STUB(nw_tls_get_negotiated_protocol_version);
DARLING_NW_STUB(nw_tls_get_negotiated_ssl_protocol);
DARLING_NW_STUB(nw_tls_get_peer_alpn_data);
DARLING_NW_STUB(nw_tls_get_peer_hostname);
DARLING_NW_STUB(nw_tls_get_peer_npn_data);
DARLING_NW_STUB(nw_tls_get_peer_ocsp_response);
DARLING_NW_STUB(nw_tls_set_alpn_data);
DARLING_NW_STUB(nw_tls_set_ciphersuites);
DARLING_NW_STUB(nw_tls_set_client_auth);
DARLING_NW_STUB(nw_tls_set_client_auth_type);
DARLING_NW_STUB(nw_tls_set_config);
DARLING_NW_STUB(nw_tls_set_dh_parameters);
DARLING_NW_STUB(nw_tls_set_fallback);
DARLING_NW_STUB(nw_tls_set_false_start);
DARLING_NW_STUB(nw_tls_set_identity_from_array);
DARLING_NW_STUB(nw_tls_set_maximum_protocol_version);
DARLING_NW_STUB(nw_tls_set_maximum_ssl_protocol);
DARLING_NW_STUB(nw_tls_set_minimum_protocol_version);
DARLING_NW_STUB(nw_tls_set_minimum_ssl_protocol);
DARLING_NW_STUB(nw_tls_set_npn_data);
DARLING_NW_STUB(nw_tls_set_npn_enabled);
DARLING_NW_STUB(nw_tls_set_peer_ec_public_key);
DARLING_NW_STUB(nw_tls_set_peer_hostname);
DARLING_NW_STUB(nw_tls_set_peer_rsa_public_key);
DARLING_NW_STUB(nw_tls_set_peer_trust);
DARLING_NW_STUB(nw_tls_set_psk_identity);
DARLING_NW_STUB(nw_tls_set_psk_identity_hint);
DARLING_NW_STUB(nw_tls_set_psk_secret);
DARLING_NW_STUB(nw_tls_set_session_resumption_enabled);
DARLING_NW_STUB(nw_tls_set_session_ticket_enabled);

/**
 *
 * ~~~ fixed up stubs ~~~
 *
 */

DARLING_NW_FIXED_UP_STUB(nw_tls_copy_sec_protocol_options, sec_protocol_options_t, NULL, nw_protocol_options_t options);
