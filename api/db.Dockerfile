FROM postgres:13.2-alpine
COPY dbControl.sh /docker-entrypoint-db.d/
RUN chmod a+r /docker-entrypoint-db.d/*