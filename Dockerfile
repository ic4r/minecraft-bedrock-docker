FROM ubuntu:latest

RUN apt-get update && apt-get install -y libcurl4 libssl1.0.0

COPY bedrock-server /bedrock-server

WORKDIR /bedrock-server
ENV LD_LIBRARY_PATH .

EXPOSE 19132/udp

CMD ./bedrock_server
