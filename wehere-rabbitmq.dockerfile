FROM rabbitmq

RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_stomp
RUN rabbitmq-plugins enable --offline rabbitmq_web_stomp

EXPOSE 15671 15672 15674 61613

rabbitmqctl  add_user stat 123456 
rabbitmqctl add_vhosts /wehere
rabbitmqctl set_permissions -p /wehere  stat "stat-*" ".*" ".*"
