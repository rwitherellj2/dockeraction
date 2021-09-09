FROM store/intersystems/iris-community:2021.1.0.215.0

RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp

WORKDIR /opt/irisapp

COPY iris.script iris.script
COPY test.script test.script
COPY src src

RUN iris start IRIS && iris session IRIS < iris.script && iris stop IRIS quietly

#ENTRYPOINT [ "/iris-main", "-a echo \"test\"" ]