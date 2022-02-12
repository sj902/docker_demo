FROM alpine

RUN apk add --update redis

CMD ["redis-server"]

# docker build -t sj902/docker_demo:v0.0.1 .            

# using CMD, you    tell what to run when docker contaier is run


##################################################################################################
######## Docker Commit - used to create an image from a running container


###Shell 1
# docker run -it alpine sh                                                                                                                  ✔
## Unable to find image 'alpine:latest' locally
## latest: Pulling from library/alpine
## 59bf1c3509f3: Already exists
## Digest: sha256:21a3deaa0d32a8057914f36584b5288d2e5ecc984380bc0118285c70fa8c9300
## Status: Downloaded newer image for alpine:latest
## / ## apk add --update redis
## fetch https://dl-cdn.alpinelinux.org/alpine/v3.15/main/x86_64/APKINDEX.tar.gz
## fetch https://dl-cdn.alpinelinux.org/alpine/v3.15/community/x86_64/APKINDEX.tar.gz
## (1/1) Installing redis (6.2.6-r0)
## Executing redis-6.2.6-r0.pre-install
## Executing redis-6.2.6-r0.post-install
## Executing busybox-1.34.1-r3.trigger
## OK: 8 MiB in 15 packages
## / 

###Shell 2

#   docker ps                                                                                                                                                                  ✔
## CONTAINER ID   IMAGE     COMMAND   CREATED          STATUS          PORTS     NAMES
## 74c1ea426f28   alpine    "sh"      20 seconds ago   Up 19 seconds             elastic_swanson

# docker commit -c 'CMD ["redis-server"]' 74c1ea426f28                                                                                                                        ✔
## sha256:83b5fc6d262de650530d3013409288ef9159cff7c8f1af10f69c42f83eb3e64e

# docker run 83b5fc6d2                                                                                                                                                        ✔
## 1:C 12 Feb 2022 10:21:26.181 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
## 1:C 12 Feb 2022 10:21:26.181 # Redis version=6.2.6, bits=64, commit=b39e1241, modified=0, pid=1, just started
## 1:C 12 Feb 2022 10:21:26.181 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
## 1:M 12 Feb 2022 10:21:26.183 * monotonic clock: POSIX clock_gettime
## 1:M 12 Feb 2022 10:21:26.186 * Running mode=standalone, port=6379.
## 1:M 12 Feb 2022 10:21:26.186 # Server initialized
## 1:M 12 Feb 2022 10:21:26.192 * Ready to accept connections

########################################################################################################  