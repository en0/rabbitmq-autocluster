FROM rabbitmq:3-management
ADD https://github.com/aweber/rabbitmq-autocluster/releases/download/0.6.1/autocluster-0.6.1.tgz /var/lib/rabbitmq/
RUN tar xzf /var/lib/rabbitmq/autocluster-0.6.1.tgz -C /usr/lib/rabbitmq/lib/rabbitmq_server-* && \
     rabbitmq-plugins enable autocluster
