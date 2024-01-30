.PHONY: deploy clean

deploy: env client server
	cp ./svyazkom-test-client/.env.example ./svyazkom-test-client/.env
	cp ./svyazkom-test-server/.env.example ./svyazkom-test-server/.env
	docker-compose up -d

client:
	[ -d "svyazkom-test-client" ] || git clone https://github.com/OstPerino/svyazkom-test-client.git

server:
	[ -d "svyazkom-test-server" ] || git clone https://github.com/OstPerino/svyazkom-test-server.git

clean:
	rm -rf svyazkom-test-client svyazkom-test-server
	rm .env

down:
	docker-compose down -v

migrates:
	docker-compose exec api php artisan migrate

env:
	cp ./.env.example ./.env
