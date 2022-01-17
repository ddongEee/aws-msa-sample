project:=aws-msa-sample

.PHONY: default
default: stop update start

.PHONY: restart
restart: stop start

.PHONY: start
start: 
	- ./bin/start.sh

.PHONY: stop
stop: 
	- ./bin/stop.sh

.PHONY: update
update:
	- git submodule update --remote

.PHONY: ps
ps:
	- @docker ps -a --format="table {{ .ID }}\\t{{ .Names }}\\t{{ .Status }}\\t{{ .Image }}\\t{{ .Ports }}" -f network=${project}_default

.PHONY: proxystart
proxystart:
	docker-compose -p ${project} up -d

.PHONY: proxystop
proxystop:
	docker-compose -p ${project} down --remove-orphans

.PHONY: logs
logs:
	docker-compose -p ${project} logs -f


