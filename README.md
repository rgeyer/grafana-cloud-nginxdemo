# Grafana Cloud NGINX Integration demo
This is a quick and easy test environment for the [NGINX](https://grafana.com/docs/grafana-cloud/integrations/integration-nginx/) integration.

# Prerequistes
* Git
* Docker
* Docker Compose
* Make
* A Grafana Cloud [MetricsPublisher](https://grafana.com/docs/grafana-cloud/cloud-portal/create-api-key/) Key
* A Grafana Cloud Hosted Logs (Loki) Username
* A Grafana Cloud Hosted Logs (Loki) URL
* Free [GeoLite2](https://dev.maxmind.com/geoip/geolite2-free-geolocation-data) Country geoip database stored as `GeoLite2-Country.mmdb` in the root directory

# Usage
Once you have the necessary MetricsPublisher key, username, and URL, you can either set them as environment variables, or you will be prompted for them.

Variable Names;
`METRICS_PUBLISHER_KEY`
`HOSTED_LOGS_USER`
`HOSTED_LOGS_URL`

To start the demo environment simply;
`make` or `make up`

When you've had your fun, you can tear it down with;
`make down`
