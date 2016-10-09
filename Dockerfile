FROM centos:7
MAINTAINER xingziyang zyxing@yihecloud.com

WORKDIR /home/install
#解压jdk
ADD jdk-7u80-linux-x64.tar.gz /usr/java
# 配置环境变量  
ENV JAVA_HOME /usr/java/jdk1.7.0_80
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH .:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib/rt.jar
ENV PATH $JAVA_HOME/bin:$JRE_HOME/bin:$PATH
#解压tomcat
ADD apache-tomcat-7.0.65.tar.gz /opt
ENV CATALINA_HOME /opt/apache-tomcat-7.0.65
#解压war
ADD vdcdemo01.war $CATALINA_HOME/webapps
#释放容器端口
EXPOSE 80 8080
# RUN chmod 755 $CATALINA_HOME/bin/startup.sh
# 设置tomcat启动  
ENTRYPOINT /opt/apache-tomcat-7.0.65/bin/startup.sh && tail -f -n100 /opt/apache-tomcat-7.0.65/logs/catalina.out