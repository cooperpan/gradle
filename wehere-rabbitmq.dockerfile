FROM rabbitmq

RUN rabbitmq-plugins enable --offline rabbitmq_management \
	&& rabbitmq-plugins enable --offline rabbitmq_stomp \
	&& rabbitmq-plugins enable --offline rabbitmq_web_stomp

EXPOSE 15671 15672 15674 61613

// rabbitmqctl set_permissions -p /wehere  bottle ".*" ".*" ".*"
