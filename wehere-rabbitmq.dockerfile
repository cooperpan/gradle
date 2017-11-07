FROM rabbitmq

RUN rabbitmq-plugins enable --offline rabbitmq_management \
	&& rabbitmq-plugins enable --offline rabbitmq_stomp \
	&& rabbitmq-plugins enable --offline rabbitmq_web_stomp

EXPOSE 5672 15672 61613
