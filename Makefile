# current_branch := $(shell git rev-parse --abbrev-ref HEAD)
current_branch = 3.1.2-postgresql-metastore
build:
	docker build -t myy92715/hive:$(current_branch) ./
push:
	docker push myy92715/hive:$(current_branch)
pull:
	docker pull myy92715/hive:$(current_branch)