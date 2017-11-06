NAME="bersace/strass-runtime"

build:
	docker build --tag $(NAME) .

clean:
	docker images --quiet $(NAME) | xargs --no-run-if-empty --verbose docker rmi -f

push:
	docker push $(NAME)
