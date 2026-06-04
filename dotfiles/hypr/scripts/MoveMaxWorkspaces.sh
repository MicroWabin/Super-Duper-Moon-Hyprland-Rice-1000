#!/bin/bash

Workspace=$(hyprctl activeworkspace | grep -oE "workspace ID [0-9]+" | grep -oE "[0-9]+")

if [ ${Workspace} -ge 10 ]
then
        :
else
        hyprctl dispatch movetoworkspace $((Workspace + 1))
fi
