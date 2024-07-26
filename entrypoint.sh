#!/bin/sh

# Ajustar los permisos del archivo crontab y barman.d
chmod 0644 /etc/crontab
find /etc/barman.d/ -type f -exec chmod -x {} +

# Ejecutar el comando CMD original
exec "$@"