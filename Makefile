NAME ?= serenashah

all: build run

images:
	docker images | grep ${NAME}

ps:
	docker ps -a | grep ${NAME}

build:
	docker build -t ${NAME}/flask-iss-app:latest .

run:
	docker run --name "user-iss-app" -d -p 5028:5000 --rm -v \:/iss_app ${NAME}/flask-iss-app:latest
