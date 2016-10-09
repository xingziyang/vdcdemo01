FROM 172.31.4.238:5000/base/tomcat:2.0
MAINTAINER xingziyang zyxing@yihecloud.com
COPY target/vdcdemo01.war /data/webapps/ROOT.war

#WORKDIR /home/install
#解压jdk
#ADD jdk-7u80-linux-x64.tar.gz /usr/java
# 配置环境变量  
#ENV JAVA_HOME /opt/java/jdk1.8.0_60
#ENV JRE_HOME $JAVA_HOME/jre
#ENV CLASSPATH .:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib/rt.jar
#ENV PATH $JAVA_HOME/bin:$JRE_HOME/bin:$PATH
#解压tomcat
#ADD apache-tomcat-7.0.65.tar.gz /opt
#ENV CATALINA_HOME /opt/apache-tomcat-8.0.33
ENV CATALINA_HOME /usr/local/tomcat
#解压war
#ADD vdcdemo01.war $CATALINA_HOME/webapps

#释放容器端口
#EXPOSE 80 8080
# RUN chmod 755 $CATALINA_HOME/bin/startup.sh
# 设置tomcat启动  
#ENTRYPOINT $CATALINA_HOME/bin/startup.sh && tail -f -n100 $CATALINA_HOME/logs/catalina.out
