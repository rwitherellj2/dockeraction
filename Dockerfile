FROM store/intersystems/iris-community:2021.1.0.215.0

USER root

WORKDIR /opt/irisapp

RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} .

COPY tests_entrypoint.sh tests_entrypoint.sh
RUN chmod +x tests_entrypoint.sh 

USER ${ISC_PACKAGE_MGRUSER}

COPY iris.script iris.script
COPY src src

RUN iris start IRIS && iris session IRIS < iris.script && iris stop IRIS quietly

#ENTRYPOINT [ "/iris-main", "-a echo \"test\"" ]