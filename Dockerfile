FROM golang:1.21-alpine

WORKDIR /app

RUN apk add --no-cache git make protobuf

ENV GO111MODULE=on
ENV GOPROXY=https://proxy.golang.org,direct
ENV GOPATH=/go
ENV PATH=${GOPATH}/bin:/usr/local/go/bin:$PATH

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

COPY go.mod go.sum ./
RUN go mod download

COPY . .

COPY scripts/generate_proto.sh ./scripts/generate_proto.sh

RUN chmod +x ./scripts/generate_proto.sh
RUN ./scripts/generate_proto.sh

RUN go build -o sso-service cmd/server/main.go

EXPOSE 50051

CMD ["./sso-service"]