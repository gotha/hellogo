FROM golang:1.12-alpine

COPY . /src/

RUN  cd /src \
	&& go build -o hellogo\
	&& mv hellogo /bin/hellogo

WORKDIR /

CMD [ "/bin/hellogo" ]
