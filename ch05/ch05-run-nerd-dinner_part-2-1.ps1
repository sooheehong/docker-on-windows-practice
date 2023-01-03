# https://github.com/sixeyed/docker-on-windows/issues/17
# reverse-proxy - 404 not found - problems

docker build . -t ch05-nerd-dinner-reverse-proxy:2e

docker container run -d -p 80:80 -p 8080:8080 `
  --name reverse-proxy `
  -v \\.\pipe\docker_engine:\\.\pipe\docker_engine `
  --isolation=process `
  ch05-nerd-dinner-reverse-proxy:2e `
  --api --docker --docker.endpoint=npipe:////./pipe/docker_engine --logLevel=DEBUG