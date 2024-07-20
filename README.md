# Celestia Project 

This is a simple Dockerfile which you are able to run Celestia Project. 
https://celestiaproject.space/

# Steps
- Clone repo:
  ```git clone https://github.com/xslackx/celestiaproject.git```
- Build image:
  ```sudo docker build . -t celestia:1.7```
- Enable xhost:
  ```xhost +```
- Run:
```sudo docker run -ti -v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=$DISPLAY --net=host --privileged --name celestia celestia:1.7```
