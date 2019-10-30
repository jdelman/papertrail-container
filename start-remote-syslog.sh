#!/bin/sh

# if "$REMOTE_SYSLOG_ARGS" is set, we will pass those to remote_syslog

set -x

/usr/bin/remote_syslog \
  --no-detach \
  $REMOTE_SYSLOG_ARGS \
  "/log/*"
