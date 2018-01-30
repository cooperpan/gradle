FROM docker.elastic.co/kibana/kibana:5.6.4
USER root
RUN ./bin/kibana-plugin install https://git.bitsensor.io/front-end/elastalert-kibana-plugin/builds/artifacts/kibana5/raw/artifact/elastalert-5.6.4-latest.zip?job=build

USER kibana
