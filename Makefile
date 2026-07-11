.PHONY: deps
deps:
	mix deps.get

.PHONY: build
build:
	mix compile

.PHONY: test
test:
	MIX_ENV=test mix test

.PHONY: fmt
fmt:
	mix fmt

.PHONY: lint
lint:
	mix credo

.PHONY: dialyzer
dialyzer:
	mix dialyzer

.PHONY: clean
clean:
	mix deps.clean --unlock --unused

.PHONY: docs
docs:
	mix docs --open

.PHONY: changelog
changelog:
	git cliff -o CHANGELOG.md

.PHONY: bump
bump:
	git cliff --bump -o CHANGELOG.md
