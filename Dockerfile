FROM node:12-slim AS client

FROM golang:1.14.2 AS server
WORKDIR /server/
COPY ./server/* /server/
RUN go build -o uno .
RUN go test

CMD ["uno"]
