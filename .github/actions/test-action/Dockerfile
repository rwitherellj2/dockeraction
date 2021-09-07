FROM store/intersystems/iris-community:2021.1.0.215.0

WORKDIR /opt/irisapp
COPY ./iris.script iris.script
COPY ./src src

RUN iris start IRIS && iris session IRIS < iris.script && iris stop IRIS quietly