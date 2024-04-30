# Test Makefile, that runs bash script.

.PHONY: test
test:
	if [ -f ./test-shell.sh ]; then echo 'exists'; else echo 'not exists'; fi
	./test-shell.sh