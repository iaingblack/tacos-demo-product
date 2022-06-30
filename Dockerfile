# syntax=docker/dockerfile:1
# docker build --tag tacos-binary .
# docker run -p 8080:8080 tacos-binary

FROM golang:1.18-alpine

WORKDIR /app

COPY ./product/*.go ./product/*.html ./

RUN go build -o binary ./main.go

EXPOSE 8080

CMD [ "/app/binary" ]