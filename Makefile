.PHONY: deploy clean

deploy: client server
	cp ./svyazkom-test-client/.env.example ./svyazkom-test-client/.env
	cp ./svyazkom-test-server/.env.example ./svyazkom-test-server/.env
	cd ./svyazkom-test-client && yarn install
	cd ./svyazkom-test-server && composer install
	docker-compose up -d

client:
	[ -d "svyazkom-test-client" ] || git clone https://github.com/OstPerino/svyazkom-test-client.git

server:
	[ -d "svyazkom-test-server" ] || git clone https://github.com/OstPerino/svyazkom-test-server.git

clean:
	rm -rf svyazkom-test-client svyazkom-test-server
	docker-compose down -v

migrates:
	docker-compose exec api php artisan migrate
