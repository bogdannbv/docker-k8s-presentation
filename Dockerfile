FROM golang:1.15.6-alpine AS build

RUN apk update && apk upgrade

WORKDIR /app

COPY . /app

RUN go build -o app

FROM build AS dev

RUN go get -u github.com/cosmtrek/air

CMD ["/go/bin/air"]

FROM alpine:latest AS prod

COPY --from=build /app/app /bin

CMD /bin/app
