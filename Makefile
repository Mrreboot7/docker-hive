# current_branch := $(shell git rev-parse --abbrev-ref HEAD)
# current_branch = 3.1.2-mysql-metastore
build:
	docker build -f ./Dockerfile.server -t myy92715/hive:server ./
	docker build -f ./Dockerfile.metastore -t myy92715/hive:metastore ./
push:
	docker push myy92715/hive:server
	docker push myy92715/hive:metastore
pull:
	docker pull myy92715/hive:server
	docker pull myy92715/hive:metastore