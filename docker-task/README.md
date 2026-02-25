# DOCKER🐳:

## Dockerfile:
- added the html file to the nginx root and exposed port 80 of the container.
- ran the `docker image build alireza:nginx .` for building the image
- ran the `docker container run -d -p 8080:80 --name test alireza:nginx` the 8080 is to open port 8080 of host and map it.
- now open the brower on `localhost:8080` and there it is.


## Docker compose:
- added the two services and bind mounted the ./index.html to directory of nginx and whenever the index.html is changed the change gets placed in realtime and there is no need of reloading.
- also opened the redis on port 6379.


# Challenges :
no specefic challenge .
