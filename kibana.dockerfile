FROM docker.elastic.co/kibana/kibana:5.6.4
RUN curl https://raw.githubusercontent.com/cooperpan/gradle/master/kibana.yml > /usr/share/kibana/config/kibana.yml
USER root
RUN chown kibana:kibana config/kibana.yml
USER kibana
