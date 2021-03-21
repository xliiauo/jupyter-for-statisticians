SHELL  := env TMPDIR=$(TMPDIR) $(SHELL)
TMPDIR ?= "/tmp"

.PHONY: default stop clean start

default:
	docker-compose up

start:
	docker-compose up -d

stop:
	docker-compose down

clean:
	docker image rm jupyter-for-statisticians_jupyter
