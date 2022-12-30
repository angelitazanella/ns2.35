# NS2.35 with nam

## Base environment
- Host OS: Ubuntu 22.10
- Docker base image is ubuntu:16:04

## RUN
> \$ xhost +
\$ docker run --rm -it -e DISPLAY=\$DISPLAY -v \$PWD:/ns2 -v /tmp/.X11-unix:/tmp/.X11-unix gelirettore/ns2 
\$ ns [script]
\$ xhost -

## RUN SCRIPT

> \$ xhost +
\$ docker run --rm -it -e DISPLAY=\$DISPLAY -v \$PWD:/ns2 -v /tmp/.X11-unix:/tmp/.X11-unix gelirettore/ns2 ns [script.tcl]
\$ xhost -

## RUN NAM
> \$ xhost +
\$ docker run --rm -it -e DISPLAY=\$DISPLAY -v \$PWD:/ns2 -v /tmp/.X11-unix:/tmp/.X11-unix gelirettore/ns2 nam [script.nam]
\$ xhost -

## RUN NSG2
> \$ xhost +
\$ docker run --rm -it -e DISPLAY=\$DISPLAY -v \$PWD:/ns2 -v /tmp/.X11-unix:/tmp/.X11-unix gelirettore/ns2 nsg2
\$ xhost -