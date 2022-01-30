FROM golang:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y enchant-2 libenchant-2-dev

WORKDIR /root

ADD go.mod /root/
ADD *.go /root/

CMD ["go", "test", "-v", "--cover"]
