// SPDX-License-Identifier: GPL-3.0-or-later
#include <assert.h>
#include <dlfcn.h>
#include <nw/connection.h>
#include <stdio.h>

// The asm labels exercise the exact data imports used by current SDK clients.
extern const nw_content_context_t message __asm__("__nw_content_context_default_message");

static void check(const char *name, const nw_content_context_t *original,
                  nw_content_context_t imported) {
    const nw_content_context_t *alias = dlsym(RTLD_DEFAULT, name);
    assert(alias != NULL);
    assert(alias == original);
    assert(*alias == *original && imported == *original);
}

int main(void) {
    check("_nw_content_context_default_message", &NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT, message);
    puts("PASS: default message import shares existing constant storage and value");
    return 0;
}
