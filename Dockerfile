FROM ubuntu_barman

# Copiar el archivo de configuración de Barman
COPY ./crontab /etc/crontab
RUN chmod 0644 /etc/crontab
COPY ./entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Iniciar cron
CMD ["cron", "-f"]

