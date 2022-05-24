# Polyhobbyist ROS2 implementation of the Sparkfun Jetbot


## Prerequisites
- [X] Jetpack 4.2
- [X] Docker
- [X] Docker Compose
- [X] [vcstool](http://wiki.ros.org/vcstool)
- [] [Visual Studio Code] (http://code.visualstudio.com)
- [] [Visual Studio Code Remote Extension pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

## Setup
This repository serves the the container root for the ROS2 workspace for the Jetbot code by a Polyhobbyist. The intention is for this repo to be cloned on the host operating system, and use Docker compose or VSCode DevContainers to start a ROS2 container to work in.

First, clone this repository onto your Jetson. The location doesn't matter.

### Using Docker directly
``` bash
cd jetbot
vcs import --recursive ws/src < jetbot.repos
Docker-compose -f Docker-compose.yaml up
```

> NOTE: When using Git for repository actions, it is best to do it from outside the docker container, as there is a potential directory ownership issue when using git from within the container.

### Using VSCode Dev containers
Ensure that you have the remote extension pack installed.
Open the Jetbot folder within VSCode. 
When VSCode asks to open the Devcontainer, [you say yes](https://youtu.be/jCe5vfQx50c?t=118).


