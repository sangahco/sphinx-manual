#!/bin/sh

set -e

# build the doc with sphinx
/opt/sphinx/bin/sphinx-build -b html /opt/sphinx/doc /usr/share/nginx/html

if [ $# -eq 0 ]; then
    # if no arguments are supplied
    # execute the default entrypoint script
    . /entrypoint.sh
fi

exec "$@"