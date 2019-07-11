FROM alpine:latest

WORKDIR /demo

COPY . /demo

RUN apk add git \
    perl \
    perl-xml-libxml
RUN git clone https://github.com/E3SM-Project/cime.git

ENV NAME Demo 

CMD [ "echo" , "Welcome"]
