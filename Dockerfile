FROM ubuntu:18.04

MAINTAINER Shikhar Sharma <s.shikharcse@gmail.com>

RUN apt-get update && apt-get install -y git
RUN git config --global user.name s.shikharcse
RUN git config --global user.email s.shikharcse@gmail.com
RUN git clone https://github.com/s-shikharcse/Docker-assignment-multi-container.git
RUN apt-get update
RUN yes Y | apt-get install python
RUN yes Y | apt-get install python-pip

RUN pip install pandas
RUN pip install sklearn
RUN pip install scipy

#ADD script.sh /script.sh

#VOLUME /home/shikhar/container_output

#ENTRYPOINT bash script.sh

#CMD bash script.sh

# if the script is made executable using "chmod +x script"
# CMD [./script]
#COPY docker__assignment_1/dataOn_* ~/container_output/
