.PHONY: test
test:
	docker build --rm -t goenchant2-test .
	docker run --rm -it goenchant2-test

.PHONY: bench
bench:
	docker build --rm -t goenchant2-test .
	docker run --rm -it goenchant2-test go test --bench=.
