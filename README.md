# SSO для сайта про аниме animeProtoFub

Здесь находится код микросервиса SSO для авторизации
## Структура проекта
```bash
sso-service/
├── api/
│   ├── proto/
│   │   ├── auth.proto               # Протокол для сервисов авторизации
│   │   ├── user.proto               # Протокол для сервисов пользователя
│   │   ├── client.proto             # Протокол для сервисов клиента
│   │   └── ...                      # Другие proto-файлы
│   └── pb/
│       ├── auth.pb.go               # Сгенерированный код из auth.proto
│       ├── user.pb.go               # Сгенерированный код из user.proto
│       ├── client.pb.go             # Сгенерированный код из client.proto
│       └── ...                      # Другие сгенерированные файлы
├── cmd/
│   └── server/
│       └── main.go                  # Точка входа в приложение
├── internal/
│   ├── config/
│   │   └── config.go                # Конфигурация приложения
│   ├── server/
│   │   └── server.go                # Настройка gRPC сервера
│   ├── handlers/
│   │   ├── auth_handler.go          # Реализация gRPC сервисов авторизации
│   │   ├── user_handler.go          # Реализация gRPC сервисов пользователя
│   │   ├── client_handler.go        # Реализация gRPC сервисов клиента
│   │   └── ...                      # Другие обработчики
│   ├── services/
│   │   ├── auth_service.go          # Бизнес-логика авторизации
│   │   ├── user_service.go          # Бизнес-логика пользователей
│   │   ├── client_service.go        # Бизнес-логика клиентов
│   │   └── ...                      # Другие сервисы
│   ├── repositories/
│   │   ├── user_repository.go       # Доступ к данным пользователей
│   │   ├── client_repository.go     # Доступ к данным клиентов
│   │   ├── role_repository.go       # Доступ к данным ролей
│   │   ├── permission_repository.go # Доступ к данным разрешений
│   │   └── token_repository.go      # Доступ к данным токенов
│   ├── models/
│   │   ├── user.go                  # Модель пользователя
│   │   ├── client.go                # Модель клиента
│   │   ├── role.go                  # Модель роли
│   │   ├── permission.go            # Модель разрешения
│   │   ├── token.go                 # Модель токена
│   │   └── session.go               # Модель сессии
│   ├── utils/
│   │   ├── hash.go                  # Хеширование паролей
│   │   ├── jwt.go                   # Работа с JWT токенами
│   │   └── validator.go             # Валидация данных
│   └── database/
│       └── connection.go            # Подключение к базе данных
├── migrations/
│   └── *.sql                        # SQL файлы для миграций
├── scripts/
│   └── generate_proto.sh            # Скрипт для генерации gRPC кода из proto-файлов
├── Dockerfile                       # Docker-контейнеризация
├── go.mod                           # Модуль Go
├── go.sum                           # Контрольные суммы зависимостей
├── Makefile                         # Сценарии сборки и запуска
└── README.md                        # Документация проекта
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

