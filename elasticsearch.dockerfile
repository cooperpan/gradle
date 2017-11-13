FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.3
USER root
RUN curl https://raw.githubusercontent.com/cooperpan/gradle/master/elasticsearch.yml > /usr/share/elasticsearch/config/elasticsearch.yml
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch
