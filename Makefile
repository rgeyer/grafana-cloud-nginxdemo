METRICS_PUBLISHER_KEY ?= $(shell bash -c 'read -s -p "MetricsPublisher Key: " key; echo $$key')
HOSTED_LOGS_USER ?= $(shell bash -c 'read -p "Hosted Logs User: " user; echo $$user')
HOSTED_LOGS_URL ?= $(shell bash -c 'read -p "Hosted Logs URL: " url; echo $$url')

up:
	sed -e s,@@METRICS_PUBLISHER_KEY@@,$(METRICS_PUBLISHER_KEY),g agent.yaml.example | \
	sed -e s,@@HOSTED_LOGS_USER@@,$(HOSTED_LOGS_USER),g | \
	sed -e s,@@HOSTED_LOGS_URL@@,$(HOSTED_LOGS_URL),g > agent.yaml

	docker compose up -d

down:
	docker compose down
