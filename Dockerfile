FROM ubuntu
MAINTAINER venkatcseciet@gmail.com
RUN apt-get -y update && apt-get -y install default-jdk python
RUN mkdir /maven1
COPY target/*.jar /maven1
COPY hello.py /maven1
CMD ["python", "maven1/hello.py"]
