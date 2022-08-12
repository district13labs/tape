all: build-windows build-linux build

build-windows:
	GOOS=windows go build -o ./bin/win/tape ./internal/main.go
build-linux:
	GOOS=linux go build -o ./bin/linux/tape ./internal/main.go
build:
	go build -o ./bin/macOs/tape ./internal/main.go
