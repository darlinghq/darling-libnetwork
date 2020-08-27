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

#ifndef _NW_TLS_H_
#define _NW_TLS_H_

#include <Security/SecProtocolOptions.h>

#include <nw/protocol_options.h>

void* nw_tls_copy_peer_certificates(void);
void* nw_tls_copy_sec_protocol_metadata(void);
void* nw_tls_create_options(void);
void* nw_tls_create_peer_acceptable_distinguished_names(void);
void* nw_tls_create_peer_trust(void);
void* nw_tls_create_secret(void);
void* nw_tls_create_secret_with_context(void);
void* nw_tls_fetch_peer_public_key(void);
void* nw_tls_get_fallback(void);
void* nw_tls_get_false_start(void);
void* nw_tls_get_maximum_protocol_version(void);
void* nw_tls_get_maximum_ssl_protocol(void);
void* nw_tls_get_minimum_protocol_version(void);
void* nw_tls_get_minimum_ssl_protocol(void);
void* nw_tls_get_negotiated_cipher_spec(void);
void* nw_tls_get_negotiated_protocol_version(void);
void* nw_tls_get_negotiated_ssl_protocol(void);
void* nw_tls_get_peer_alpn_data(void);
void* nw_tls_get_peer_hostname(void);
void* nw_tls_get_peer_npn_data(void);
void* nw_tls_get_peer_ocsp_response(void);
void* nw_tls_set_alpn_data(void);
void* nw_tls_set_ciphersuites(void);
void* nw_tls_set_client_auth(void);
void* nw_tls_set_client_auth_type(void);
void* nw_tls_set_config(void);
void* nw_tls_set_dh_parameters(void);
void* nw_tls_set_fallback(void);
void* nw_tls_set_false_start(void);
void* nw_tls_set_identity_from_array(void);
void* nw_tls_set_maximum_protocol_version(void);
void* nw_tls_set_maximum_ssl_protocol(void);
void* nw_tls_set_minimum_protocol_version(void);
void* nw_tls_set_minimum_ssl_protocol(void);
void* nw_tls_set_npn_data(void);
void* nw_tls_set_npn_enabled(void);
void* nw_tls_set_peer_ec_public_key(void);
void* nw_tls_set_peer_hostname(void);
void* nw_tls_set_peer_rsa_public_key(void);
void* nw_tls_set_peer_trust(void);
void* nw_tls_set_psk_identity(void);
void* nw_tls_set_psk_identity_hint(void);
void* nw_tls_set_psk_secret(void);
void* nw_tls_set_session_resumption_enabled(void);
void* nw_tls_set_session_ticket_enabled(void);

sec_protocol_options_t nw_tls_copy_sec_protocol_options(nw_protocol_options_t options);

#endif // _NW_TLS_H_
