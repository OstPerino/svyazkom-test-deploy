.PHONY: deploy

deploy:
	git clone https://github.com/OstPerino/svyazkom-test-client.git
	git clone https://github.com/OstPerino/svyazkom-test-server.git
	cp svyazkom-test-client/.env.example svyazkom-test-client/.env
	cp svyazkom-test-server/.env.example svyazkom-test-server/.env
	cd ./svyazkom-test-client
	yarn install
	cd ../svyazkom-test-server
	composer




#     cd repo1/deploy && docker-compose up -d
#     cd ../..
#     cd repo2/deploy && docker-compose up -d
