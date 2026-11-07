# Default message context data alias

Compile `default-content-contexts.c` as a Darwin executable with the configured
Darling SDK, this repository's `include/`, libnetwork and libSystem. Assertions
must be enabled. Run the executable inside the matching private Darling runtime:

```sh
darling shell /Volumes/SystemRoot/absolute/path/to/default-content-contexts
```

The old library fails to link the exact `_nw_content_context_default_message`
data import. With the alias, linking and execution pass. The test checks both
the imported value and `dlsym` storage identity against the existing
`NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT`, so duplicating a constant is not enough.

This covers the existing default-message constant, not connection I/O behavior.
