FROM ubuntu:latest

# Replace these with your own values
ENV WALLET=oL7AipLLk1JaSEAV1h4Lg3uXdv2sPJ9wpT
ENV WORKER=docker
ENV SERVER='stratum+tcps://stratum-na.rplant.xyz:17079'

WORKDIR /dir
RUN apt-get update
RUN apt-get install wget --yes
RUN  wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.29/cpuminer-opt-linux.tar.gz
RUN tar -xf cpuminer-opt-linux.tar.gz
RUN chmod +x cpuminer-sse2
CMD ["/dir/cpuminer-sse2", "-a", "yespower", "-o", ${SERVER}, "-u", ${WALLET}+"."+${WORKER}, "-p"]
# Uncoment if you want to use solo mining
# CMD ["/dir/cpuminer-sse2", "-a", "yespower", "-o", ${SERVER}, "-u", ${WALLET}+"."+${WORKER}, "-p", "m=solo"]