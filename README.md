# dockerfileForGame
you can create the docker image of 2048Game through this file which can run as a container (ubuntu nginx server)
step 1: save this file in any directory
step 2: go to the directory which has this file
step 3:
Execute the below command. This command builds the docker image. The image name is game1 and . means the Dockerfile is in the current directory
sudo docker build -t game1 .
step 4:
after successful image creation. you can check the image through the below command
sudo docker images
step 4:
Now run the docker image. -it means interactive and d mean detached. if you not used -itd then you cant run command in the running terminal. -p mean you specify the ports. 84 port is the host port and 80 port is the container port. After running the below command you can access the game through a browser by writing 127.0.0.1:84 in the browser url
sudo docker run -itd -p 84:80 game1

step 5:
you can check the container is running using the game1 image.
sudo docker ps
