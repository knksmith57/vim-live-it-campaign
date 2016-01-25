all: build

build:
	docker build --tag vim.ksmith.io --file Dockerfile .

run: build
	docker run --rm -it -p 80:80 --name vim.ksmith.io vim.ksmith.io

sh:
	docker exec -it vim.ksmith.io sh


.PHONY: build run
