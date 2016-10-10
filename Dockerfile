FROM 172.31.4.238:5000/base/tomcat:2.0
MAINTAINER xingziyang zyxing@yihecloud.com
COPY target/vdcdemo01.war /data/webapps/ROOT.war

