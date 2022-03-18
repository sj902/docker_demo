docker run busybox #Runs the default command from the image

docker run busybox echo hi there #Override default command                                                                                                                     ✔
# Unable to find image 'busybox:latest' locally
# latest: Pulling from library/busybox
# 009932687766: Pull complete
# Digest: sha256:afcc7f1ac1b49db317a7196c902e61c6c3c4607d63599ee1a82d702d249a0ccb
# Status: Downloaded newer image for busybox:latest
# hi there

docker run busybox ls                                                                                                                                  ✔  10s
# bin
# dev
# etc
# home
# proc
# root
# sys
# tmp
# usr
# var

docker run hello-world echo hi                                                                                                                           127 ↵
# docker: Error response from daemon: OCI runtime create failed: container_linux.go:380: starting container process caused: exec: "echo": executable file not found in $PATH: unknown.
# ERRO[0000] error waiting for container: context canceled
# This did not run as the hello-world image does not have any binary for running the echo command

docker ps                                                                                                                                                   ✔
# CONTAINER ID   IMAGE     COMMAND             CREATED         STATUS         PORTS     NAMES
# d2a83b757a1f   busybox   "ping google.com"   5 seconds ago   Up 3 seconds             angry_montalcini

docker ps                                                                                                                                                   ✔
# CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
# List of all running containers

 docker ps --all                                                                                                                                              ✔
# CONTAINER ID   IMAGE     COMMAND             CREATED              STATUS                      PORTS     NAMES
# d2a83b757a1f   busybox   "ping google.com"   About a minute ago   Exited (0) 16 seconds ago             angry_montalcini
# ed3b722880bd   busybox   "ls"                35 minutes ago       Exited (0) 35 minutes ago             elegant_kowalevski
# List of all created containers


docker create hello-world                                                                                                                        ✔
# 5e76db9695adf90e5e67c7156e039a3578095ba6837568de09f0f6a901921e22

docker ps                                                                                                                                    INT ↵
# CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

docker ps --all                                                                                                                                  ✔
# CONTAINER ID   IMAGE         COMMAND             CREATED          STATUS                      PORTS     NAMES
# 5e76db9695ad   hello-world   "/hello"            35 seconds ago   Created                               keen_kalam
# d2a83b757a1f   busybox       "ping google.com"   13 minutes ago   Exited (0) 12 minutes ago             angry_montalcini
# ed3b722880bd   busybox       "ls"                47 minutes ago   Exited (0) 47 minutes ago             elegant_kowalevski

docker start -a 5e76db9695adf90e5e67c7156e039a3578095ba6837568de09f0f6a901921e22                                                                 ✔
# -a attaches the outpur to the console

# Hello from Docker!
# This message shows that your installation appears to be working correctly.

# To generate this message, Docker took the following steps:
#  1. The Docker client contacted the Docker daemon.
#  2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
#     (amd64)
#  3. The Docker daemon created a new container from that image which runs the
#     executable that produces the output you are currently reading.
#  4. The Docker daemon streamed that output to the Docker client, which sent it
#     to your terminal.

# To try something more ambitious, you can run an Ubuntu container with:
#  $ docker run -it ubuntu bash

# Share images, automate workflows, and more with a free Docker ID:
#  https://hub.docker.com/

# For more examples and ideas, visit:
#  https://docs.docker.com/get-started/


docker start hello-world                                                                                                                         ✔
# Error response from daemon: No such container: hello-world
# Error: failed to start containers: hello-world
# 
# docker run = docker create + docker start

docker start 5e76db9695adf90e5e67c7156e039a3578095ba6837568de09f0f6a901921e22                                                                  1 ↵
# 5e76db9695adf90e5e67c7156e039a3578095ba6837568de09f0f6a901921e22
# output hidden 
# With docker start you can also start an exited container
 



docker ps --all                                                                                                                                  ✔
# CONTAINER ID   IMAGE         COMMAND             CREATED              STATUS                          PORTS     NAMES
# 9c987c0d33e2   busybox       "echo hi there"     About a minute ago   Exited (0) 36 seconds ago                 practical_colden
# 7e582751e378   busybox       "ping google.com"   About a minute ago   Exited (0) About a minute ago             exciting_black
# 5e76db9695ad   hello-world   "/hello"            About an hour ago    Exited (0) 59 minutes ago                 keen_kalam
# d2a83b757a1f   busybox       "ping google.com"   About an hour ago    Exited (0) About an hour ago              angry_montalcini
# ed3b722880bd   busybox       "ls"                2 hours ago          Exited (0) 2 hours ago                    elegant_kowalevski

docker start -a ed3b722880bd                                                                                                                     ✔
# bin
# dev
# etc
# home
# proc
# root
# sys
# tmp
# usr
# var

docker ps --all                                                                                                                                  ✔
# CONTAINER ID   IMAGE         COMMAND             CREATED              STATUS                          PORTS     NAMES
# 9c987c0d33e2   busybox       "echo hi there"     About a minute ago   Exited (0) About a minute ago             practical_colden
# 7e582751e378   busybox       "ping google.com"   2 minutes ago        Exited (0) 2 minutes ago                  exciting_black
# 5e76db9695ad   hello-world   "/hello"            About an hour ago    Exited (0) About an hour ago              keen_kalam
# d2a83b757a1f   busybox       "ping google.com"   About an hour ago    Exited (0) About an hour ago              angry_montalcini
# ed3b722880bd   busybox       "ls"                2 hours ago          Exited (0) 2 seconds ago                  elegant_kowalevski

# Once created, you cannot replace the command. It will run the command it was first started with


docker system prune                                                                                                                             ✔
# WARNING! This will remove:
#   - all stopped containers
#   - all networks not used by at least one container
#   - all dangling images
#   - all dangling build cache

# Are you sure you want to continue? [y/N] y
# Deleted Containers:
# 9c987c0d33e2bf36184cf1a3b17b7247b6ea1db98a96ecd306a75ddae8278c41
# 7e582751e37890815cd3ec5fbb28e6fe2020f8b56ff6097e90ef51b6567da56e
# 5e76db9695adf90e5e67c7156e039a3578095ba6837568de09f0f6a901921e22
# d2a83b757a1fd17470e65b3d49d2882eddc5be81aad9ddb3975f733ca8daa5d4
# ed3b722880bdec3a1dd1e4b7ae2bdaea99acb52010a4f07da1274d383ab58397

# Deleted build cache objects:
# x16mexfusipq56dub1jx2zfif
# tgoolya8zdbt88jqdy7s54skq
# rgxgs5hhzv17nsxgdhopw6qt6

# Total reclaimed space: 1.704MB
#also removes cached images
#



docker create busybox  ping google.com                                                                                                         1 ↵
# cbbb33d3908b872291e8e8aa1cb92f1ba2ae336c5ea94b0bc37fd881f797f82b

docker start cbbb33d3908b872291e8e8aa1cb92f1ba2ae336c5ea94b0bc37fd881f797f82b                                                                    ✔
# cbbb33d3908b872291e8e8aa1cb92f1ba2ae336c5ea94b0bc37fd881f797f82b

docker logs cbbb33d3908b872291e8e8aa1cb92f1ba2ae336c5ea94b0bc37fd881f797f82b                                                                     ✔
# PING google.com (142.250.193.238): 56 data bytes
# 64 bytes from 142.250.193.238: seq=0 ttl=37 time=10.613 ms
# 64 bytes from 142.250.193.238: seq=1 ttl=37 time=8.924 ms
# 64 bytes from 142.250.193.238: seq=2 ttl=37 time=8.852 ms
# 64 bytes from 142.250.193.238: seq=3 ttl=37 time=11.443 ms
# 64 bytes from 142.250.193.238: seq=4 ttl=37 time=8.884 ms
# 64 bytes from 142.250.193.238: seq=5 ttl=37 time=9.222 ms
# 64 bytes from 142.250.193.238: seq=6 ttl=37 time=9.324 ms

docker logs cbbb33d3908b872291e8e8aa1cb92f1ba2ae336c5ea94b0bc37fd881f797f82b                                                                     ✔
# PING google.com (142.250.193.238): 56 data bytes
# 64 bytes from 142.250.193.238: seq=0 ttl=37 time=10.613 ms
# 64 bytes from 142.250.193.238: seq=1 ttl=37 time=8.924 ms
# 64 bytes from 142.250.193.238: seq=2 ttl=37 time=8.852 ms
# 64 bytes from 142.250.193.238: seq=3 ttl=37 time=11.443 ms
# 64 bytes from 142.250.193.238: seq=4 ttl=37 time=8.884 ms
# 64 bytes from 142.250.193.238: seq=5 ttl=37 time=9.222 ms
# 64 bytes from 142.250.193.238: seq=6 ttl=37 time=9.324 ms
# 64 bytes from 142.250.193.238: seq=7 ttl=37 time=9.220 ms
# 64 bytes from 142.250.193.238: seq=8 ttl=37 time=8.979 ms
# 64 bytes from 142.250.193.238: seq=9 ttl=37 time=11.845 ms

docker logs cbbb33d3908b872291e8e8aa1cb92f1ba2ae336c5ea94b0bc37fd881f797f82b                                                                     ✔
# PING google.com (142.250.193.238): 56 data bytes
# 64 bytes from 142.250.193.238: seq=0 ttl=37 time=10.613 ms
# 64 bytes from 142.250.193.238: seq=1 ttl=37 time=8.924 ms
# 64 bytes from 142.250.193.238: seq=2 ttl=37 time=8.852 ms
# 64 bytes from 142.250.193.238: seq=3 ttl=37 time=11.443 ms
# 64 bytes from 142.250.193.238: seq=4 ttl=37 time=8.884 ms
# 64 bytes from 142.250.193.238: seq=5 ttl=37 time=9.222 ms
# 64 bytes from 142.250.193.238: seq=6 ttl=37 time=9.324 ms
# 64 bytes from 142.250.193.238: seq=7 ttl=37 time=9.220 ms
# 64 bytes from 142.250.193.238: seq=8 ttl=37 time=8.979 ms
# 64 bytes from 142.250.193.238: seq=9 ttl=37 time=11.845 ms
# 64 bytes from 142.250.193.238: seq=10 ttl=37 time=8.395 ms
# 64 bytes from 142.250.193.238: seq=11 ttl=37 time=9.087 ms

docker stop cbbb33d3908b872291e8e8aa1cb92f1ba2ae336c5ea94b0bc37fd881f797f82b                                                                     ✔
# cbbb33d3908b872291e8e8aa1cb92f1ba2ae336c5ea94b0bc37fd881f797f82b

#docker stop vs docker kill
#STOP - gives a sigterm to process, so the process can do some clean up. If, in 10 sec process does not die, docker itself issues a kill command
#KILL - kills the parent process




docker run redis
docker exec -it adabcfcafa00 redis-cli                                                                                                                                      ✔
# 127.0.0.1:6379> exit


# -it is short for --interactive + --tty. When you docker run with this command it takes you straight inside the container.
# without -t, we won't see the terminal prompt
# without -i, the shell will not be interactive
# -d is short for --detach, which means you just run the container and then detach from it. Essentially, you run container in the background.

# So if you run the Docker container with -itd, it runs both the -it options and detaches you from the container.
# As a result, your container will still be running in the background even without any default app to run.

docker run -it redis sh
# This will just open the shell and will not run the redis server  

# restart policy
# Flag    Description
# no  Do not automatically restart the container. (the default)
# on-failure[:max-retries]    Restart the container if it exits due to an error, which manifests as a non-zero exit code. Optionally, limit the number of times the Docker daemon attempts to restart the container using the :max-retries option.
# always  Always restart the container if it stops. If it is manually stopped, it is restarted only when Docker daemon restarts or the container itself is manually restarted. (See the second bullet listed in restart policy details)
# unless-stopped  Similar to always, except that when the container is stopped (manually or otherwise), it is not restarted even after Docker daemon restarts.


docker-compose up --build
# build the service using dockerfile and run the services

docker-compose up --build -d
# detached mode



docker-compose ps                                           
#         Name                       Command               State           Ports         
# ---------------------------------------------------------------------------------------
# visits_node-app_1       docker-entrypoint.sh npm start   Up      0.0.0.0:4001->8081/tcp
# visits_redis-server_1   docker-entrypoint.sh redis ...   Up      6379/tcp   
# 
# Get status of docker containers related to docker-compose files



docker build -f Dockerfile.dev   
# Use -f to specify a custom file

docker run -it -p 3000:3000 -v /app/node_modules  -v $(pwd):/app a52b26585f412a6dc0297f75c040e276901689db0999c99a86dfc8
# use -v to set up docker volume so you can change things live


