.PHONY: test lint lint-all lint-examples tools

test:
	go test *.go

# gradually build up amount of linting - there's a lot to do...

lint: lint-examples
	golangci-lint run ./...

tools:
	# install build tools
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(GOPATH)/bin v1.24.0
