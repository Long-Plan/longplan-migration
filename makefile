mode = dev # dev, prod

# load env files
include .env/.env.$(mode)
export $(shell sed 's/=.*//' .env/.env.$(mode))

dbcreate:
	migrate create -ext sql -dir cmd/db/migrations/ -seq longplan
dbup:
	migrate -path cmd/db/migrations/ -database "postgres://$(POSTGRES_USER):$(POSTGRES_PASSWORD)@$(POSTGRES_HOST):$(POSTGRES_PORT)/$(POSTGRES_DB)?sslmode=disable" up
dbdown:
	migrate -path cmd/db/migrations/ -database "postgres://$(POSTGRES_USER):$(POSTGRES_PASSWORD)@$(POSTGRES_HOST):$(POSTGRES_PORT)/$(POSTGRES_DB)?sslmode=disable" down
dbupgrade:
	migrate -path cmd/db/migrations/ -database "postgres://$(POSTGRES_USER):$(POSTGRES_PASSWORD)@$(POSTGRES_HOST):$(POSTGRES_PORT)/$(POSTGRES_DB)?sslmode=disable" up 1
dbdowngrade:
	migrate -path cmd/db/migrations/ -database "postgres://$(POSTGRES_USER):$(POSTGRES_PASSWORD)@$(POSTGRES_HOST):$(POSTGRES_PORT)/$(POSTGRES_DB)?sslmode=disable" down 1