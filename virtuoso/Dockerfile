FROM tenforce/virtuoso:latest
ENV DEFAULT_GRAPH=http://hitontology.eu/ontology
WORKDIR /virtuoso
COPY setup.sql .
COPY wrapper.sh .
# Virtuoso will automatically load any data in that directory on the first startup
# See https://hub.docker.com/r/tenforce/virtuoso
ENTRYPOINT ["/bin/sh","./wrapper.sh"]
