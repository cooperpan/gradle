FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.3
RUN curl https://raw.githubusercontent.com/cooperpan/gradle/master/elasticsearch.yml > /usr/share/elasticsearch/config/elasticsearch.yml
USER root
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch
