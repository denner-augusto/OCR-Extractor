FROM golang:1.22 as builder

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o server

<<<<<<< HEAD

FROM scratch

COPY --from=builder /app/server /server

ENTRYPOINT [ "/server" ]
=======
ENTRYPOINT [ "/app/server" ]
>>>>>>> 5a48b6f506de43f0b60291f4941c44b3800b4ddb
