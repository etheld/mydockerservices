docker run --rm --privileged multiarch/qemu-user-static:register --reset
docker build -t gwelican/homebridge .
docker tag gwelican/homebridge latest
docker push gwelican/homebridge:latest
