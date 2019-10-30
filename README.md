## papertrail-container

A container you can run alongside your app container for sending logs to Papertrail.

One way to use this is to send your logs to a shared volume, and then mount the shared volume to `/log` in the container.

You can pass arguments to `remote_syslog` by setting the `REMOTE_SYSLOG_ARGS` environment variable when starting up the container.

A typical usage looks like this:

```sh
docker run \
  -d \
  -e REMOTE_SYSLOG_ARGS="-d logs.papertrail.com -p 12345" \
  -v logs-volume:/log \
  papertrail-container
```