# SSO для сайта про аниме animeProtoFub

Здесь находится код микросервиса SSO для авторизации
## Структура проекта
```bash
.
├── api
│ └── helloworld.go # Сгенерированный gRPC код
├── bin # Директория для бинарников
├── cmd
│ ├── client
│ │ └── main.go # gRPC client implementation
│ └── server
│   └── main.go # gRPC server implementation
├── compile_proto.sh # Скрипт для компиляции protobuf файлов
├── go.mod # Go module файлы
├── go.sum # Go dependencies файлы
├── grpc
│ ├── helloworld # Сгенерированный gRPC код
│ ├── helloworld_grpc.pb.go
│ └── helloworld.pb.go
├── proto
│ └── helloworld.proto # Protobuf файл
└── README.md # Инструкция от этого того самого
```

## Getting Started (Геттинг стартед)

### Зависимости

- Go 1.22 версии или выше
- Protocol Buffers компилятор (`protoc`)
- Go плагины для `protoc`

### Установите Protocol Buffers компилятор

Follow the [installation guide for `protoc`](https://grpc.io/docs/protoc-installation/).

[Поет `Жанна Фриске` всем танцевать](https://www.youtube.com/watch?v=fru-_nqI6RI)

### Установка плагинов для `protoc`

```bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
```
Убедитесь что $GOPATH/bin находится в вашем PATH.

### Компиляция прото файлов (для мужиков)
Используйте compile_proto.sh скрипт дял компиляции ваших прото файлов:

```bash
make proto
```
### Build and Run

Ну тут билдим сервер и файлики прото

#### Build
```bash
make build
```
#### Run Server
```bash
./bin/server
```
#### Run Client
```bash
./bin/client
```

### Project Layout
- proto/helloworld.proto: Protobuf definition for the helloworld service.
- grpc/helloworld: Generated Go code for the helloworld service.
- cmd/server/main.go: Entrypoint of the gRPC server.
- cmd/client/main.go: Entrypoint of the gRPC client.
- compile_proto.sh: Script to compile protobuf files.
- Makefile: Makefile to automate the build process.

## Наши ребятки поддержим донатом
- gRPC
- Protocol Buffers

## Делать коммиты в этот репозиторой только во время прослушивания Жанны Фриске

https://www.youtube.com/watch?v=asJwSifFdus

![alt text](https://i.pinimg.com/originals/f2/7e/c9/f27ec9dd30b6d4946cac165b66e49fcf.jpg)

