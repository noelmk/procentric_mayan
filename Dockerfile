FROM mayanedms/mayanedms:3

COPY ./scripts/run_frontend.sh /usr/local/bin/run_frontend.sh
COPY ./scripts/mayan.conf /etc/supervisor/conf.d/mayan.conf

RUN chmod +x /usr/local/bin/run_frontend.sh
RUN chown -R mayan:mayan /usr/local/bin
RUN usermod -a -G  sudo,mayan mayan
RUN echo "mayan ALL=NOPASSWD: ALL" >> /etc/sudoers

# CMD [ "entrypoint.sh" ] 
# RUN echo "\nmayan ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && cat /etc/sudoers
# RUN cat /etc/sudoers| echo

# USER mayan
