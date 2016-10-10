#FROM 172.31.4.238:5000/base/tomcat:2.0
FROM 172.31.4.238:5000/base/java_base
MAINTAINER xingziyang zyxing@yihecloud.com
#COPY target/vdcdemo01.war /data/webapps/ROOT.war
COPY target/vdcdemo01.war /opt/apache-tomcat-7.0.72/webapps/ROOT.war

