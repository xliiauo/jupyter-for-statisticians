SHELL  := env TMPDIR=$(TMPDIR) $(SHELL)
TMPDIR ?= "/tmp"

.PHONY: default stop clean

default:
	docker-compose up

stop:
	docker-compose down

clean:
	docker image rm jupyter-for-statisticians_jupyter
