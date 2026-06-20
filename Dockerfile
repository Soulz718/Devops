
###Docker

#Rule

FIle name should be start with "D" and Dockerfile

cat /etc/os-release    #How find this OS/family -ubuntu /windows/linux

#To Build image
docker build -t soul_image .

docker run soul_image

docker images #To show images

docker start soul_container


docker run -it soul_image   
###     i- Interactive , t-TTY

docker stop soul_container

docker start soul_container

#Running commands in container
docker exec -it soul_container node
docker exec -it soul_container /bin/bash    # node and /bin/bash - file
ls
cd /usr/local/bin/bash
ls 
You can find the node file now

#Tag container name
docker run --name my_soul_image node

#rename the container name
docker rename my_soul_image gill_image

docker ps  #To show running container

docker ps -a     #To show all container

#Delete
docker prune     #To delete exited/stop container 
docker rm container id
docker rm -f container id
docker rmi gill_image  # if any container run depending on this image first we need to delete those containers
#

# Project work

docker build -t virat_image .  #t- tag

#Image pushing into DockerHub and create a repository

docker tag virat_image soul718/my_virat_repo:latest
docker push my_virat_repo:latest

#Pulling and run DockerHub image
docker pull my_virat_repo:latest

docker run -it virat_image

docker ps -a




######################################



Common Commands:
  run         Create and run a new container from an image
  exec        Execute a command in a running container
  ps          List containers
  build       Build an image from a Dockerfile
  bake        Build from a file
  pull        Download an image from a registry
  push        Upload an image to a registry
  images      List images
  login       Authenticate to a registry
  logout      Log out from a registry
  search      Search Docker Hub for images
  version     Show the Docker version information
  info        Display system-wide information

Management Commands:
  agent*      Docker AI Agent Runner
  ai*         Docker AI Agent - Ask Gordon
  builder     Manage builds
  buildx*     Docker Buildx
  compose*    Docker Compose
  container   Manage containers
  context     Manage contexts
  debug*      Get a shell into any image or container
  desktop*    Docker Desktop commands
  dhi*        CLI for managing Docker Hardened Images
  extension*  Manages Docker extensions
  image       Manage images
  init*       Creates Docker-related starter files for your project
  manifest    Manage Docker image manifests and manifest lists
  mcp*        Docker MCP Plugin
  model*      Docker Model Runner
  network     Manage networks
  offload*    Docker Offload
  plugin      Manage plugins
  sandbox*    Docker Sandbox
  sbom*       View the packaged-based Software Bill Of Materials (SBOM) for an image
  scout*      Docker Scout
  system      Manage Docker
  volume      Manage volumes

Swarm Commands:
  swarm       Manage Swarm

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  import      Import the contents from a tarball to create a filesystem image
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  wait        Block until one or more containers stop, then print their exit codes

Global Options:
      --config string      Location of client config files (default
                           "C:\\Users\\ajith\\.docker")
  -c, --context string     Name of the context to use to connect to the
                           daemon (overrides DOCKER_HOST env var and
                           default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host string        Daemon socket to connect to
  -l, --log-level string   Set the logging level ("debug", "info",
                           "warn", "error", "fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default
                           "C:\\Users\\ajith\\.docker\\ca.pem")
      --tlscert string     Path to TLS certificate file (default
                           "C:\\Users\\ajith\\.docker\\cert.pem")
      --tlskey string      Path to TLS key file (default
                           "C:\\Users\\ajith\\.docker\\key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Run 'docker COMMAND --help' for more information on a command.

For more help on how to use Docker, head to https://docs.docker.com/go/guides/

###########################################

apt-get update
apt install docker.io
docker images
docker pull httpd
docker images
docker run -itd -p "80:80" httpd    #p-publish
docker ps -a
docker exec -it conrainerid /bin/bash  #Change/edit the detail in container
docker images
docker ps -a
docker commit containerid gill_image:latest/v1  # It is used to change container into image
dcoker save -o ./myimagebackup.tar gill_image:latest
ls -l
ls -lh
scp myimagebackup.tar                  # File transfer from one linux to other linux
##
docker rm -f containerid
docker rmi imageid
docker images
docker ps -a
ls -la
docker load -i myimagebackup.tar
##
docker tag virat_image soul718/my_virat_repo:latest
docker push my_virat_repo:latest

#Pulling and run DockerHub image
docker pull my_virat_repo:latest

docker run -it virat_image

docker ps -a
##

#  Docker Volume   ##
A Docker Volume is a mechanism for storing data outside a container so that the data persists even if the container is stopped, removed, or recreated.
docker volume create myvolume
docker volume ls
docker volume inspect myvolume

Bind Mount Example

index.hmtl file path  usr/local/apache2/htdocs

docker run -itd -p "9000:80" -v "/opt/www:usr/local/apache2/htdocs" gill_image:lastest  #bind mount -sync

docker run -itd -p "9000:80" --mount source=my-vol,target=/usr/local/apache2/htdocs soul718/my_virat_repo:latest

##   Volume   ##


Linux:
docker run -v /home/ubuntu/data:/app/data nginx
Windows:
docker run -v C:\data:/app/data nginx

Interview Questions
Q1. Why do we use Docker Volumes?

Answer:
To persist data outside containers and prevent data loss when containers are deleted or recreated.

Q2. Where are Docker volumes stored?

Linux:

/var/lib/docker/volumes/
Q3. What is the difference between a Volume and a Bind Mount?

Answer:
Volumes are managed by Docker, while bind mounts directly map host directories into containers.