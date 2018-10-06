FROM UBUNTU
MAINTAINER venkatcseciet@gmail.com
RUN apt-get -y update && apt-get -y install default-jdk
RUN mkdir /maven1
COPY target/*.jar /maven1
CMD ls
