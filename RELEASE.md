Release type: patch

fix: [#50615] Add guards to integration service monitors.

Before this fix the service monitors for sd-changed-at, sdtool and
sql_export would be deployed even when the corresponding deployments
would not, thus resulting in noop-service monitors.
