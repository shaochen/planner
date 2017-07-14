quick attempt at running planner in a container on MacOS



http://kartoza.com/en/blog/how-to-run-a-linux-gui-application-on-osx-using-docker/

https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/

prereq
brew install cask xquartz

open -a xquartz



$ docker run -d --name planner -e DISPLAY=192.168.0.220:1 -v /tmp/.X11-unix:/tmp/.X11-unix sctest/planner

docker build -t sctest/planner .

xhost +192.168.0.220
xhost + $(hostname)

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

