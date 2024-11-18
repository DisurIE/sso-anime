#!/bin/sh

set -e

PROTO_DIR="api/proto"
OUT_DIR="api/pb"


mkdir -p $OUT_DIR

protoc -I $PROTO_DIR \
  --go_out=$OUT_DIR \
  --go-grpc_out=$OUT_DIR \
  $PROTO_DIR/*.proto

echo "Генерация protobuf завершена успешно."