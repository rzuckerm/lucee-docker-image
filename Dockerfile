FROM lucee/lucee:5.4.4.38-light-tomcat9.0-jdk11-temurin-jammy

COPY LUCEE_* /tmp/
COPY run_lucee /usr/local/bin
RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
