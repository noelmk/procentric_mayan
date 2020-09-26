FROM mayanedms/mayanedms:3

COPY ./scripts/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY ./scripts/run_frontend.sh /usr/local/bin/run_frontend.sh
COPY ./scripts/mayan.conf /etc/supervisor/conf.d/mayan.conf

RUN chmod 777 /usr/local/bin/run_frontend.sh
RUN chmod 777 /usr/local/bin/entrypoint.sh
RUN chown -R root:root /usr/local/bin
RUN groupmod mayan -o -g 1000 
RUN usermod mayan -o -u 1000
# RUN chown -R mayan:mayan /var/lib/mayan
# RUN chown -R mayan:mayan /opt/mayan-edms /opt/mayan-edms/static /var/lib/mayan
# RUN usermod -a -G  sudo,mayan mayan
RUN echo "mayan ALL=NOPASSWD: ALL" >> /etc/sudoers

# ENTRYPOINT [ "executable" ]
# CMD [ "entrypoint.sh" ] 
# RUN echo "\nmayan ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && cat /etc/sudoers
# RUN cat /etc/sudoers| echo

# USER mayan
