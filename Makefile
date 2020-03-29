up:
	@docker-compose up -d && sleep 10

up-rebuild:
	@docker-compose up --build -d

down:
	@docker-compose down

ps:
	@docker ps

run dev:
	@cd src/website && npm run serve