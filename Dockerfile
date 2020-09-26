FROM mayanedms/mayanedms:3

COPY ./scripts/run_frontend.sh /usr/local/bin/run_frontend.sh
COPY ./scripts/mayan.conf /etc/supervisor/conf.d/mayan.conf

RUN chmod +x /usr/local/bin/run_frontend.sh

