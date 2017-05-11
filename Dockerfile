FROM thatsk/jmeter-base:v3
VOLUME [ "/logs" ]
VOLUME [ "/input-data" ]
VOLUME [ "/scripts" ]
EXPOSE 1099 60000
ENTRYPOINT ["jmeter-server"]
