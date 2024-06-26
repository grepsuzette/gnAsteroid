BINARY = gnAsteroid

all:
	go build -o ${BINARY} .

install: all
	@if [ -w ~/bin/ ]; then cp ${BINARY} ~/bin; \
	else cp ${BINARY} /usr/local/bin; \
	fi

run: all
	./gnAsteroid -bind 127.0.0.1:8888 -asteroid-dir ./example

teststyle: install
	./gnAsteroid -bind 127.0.0.1:8888 -asteroid-dir /me/GNO/asteroids/grepsuzette -style-dir /me/GNO/asteroids-styles/gnosmos

.PHONY: all
