FROM tomcat:8
RUN /usr/local/tomcat/bin/startup.sh
COPY MySQLJavaConnectorApp.war /usr/local/tomcat/webapps/MySQLJavaConnectorApp.war
COPY mysql-connector-java-5.1.45-bin.jar /usr/local/tomcat/lib/mysql-connector-java-5.1.45-bin.jar
COPY applicationinsights-agent-2.0.0-BETA.jar /usr/local/tomcat/lib/applicationinsights-agent-2.0.0-BETA.jar
COPY AI-Agent.xml /usr/local/tomcat/lib/AI-Agent.xml
WORKDIR /usr/local/tomcat/bin
RUN export $JAVA_OPTS javaagent="/usr/local/tomcat/lib/applicationinsights-agent-2.0.0-BETA.jar"