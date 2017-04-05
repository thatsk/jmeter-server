FROM thatsk/jmeter-server:v2

MAINTAINER thatsk

ENV PATH $PATH:$JMETER_BIN
ADD jmeter.properties /var/lib/apache-jmeter-$JMETER_VERSION/bin/
VOLUME [ "/logs" ]
VOLUME [ "/input-data" ]
EXPOSE  1099 50000
ENTRYPOINT $JMETER_HOME/bin/jmeter-server -Dserver.rmi.localport=50000 -Dserver_port=1099
