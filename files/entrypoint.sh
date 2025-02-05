#!/bin/bash
envsubst < /pimsync.conf > /pimsync-running.conf
exec "$@"
