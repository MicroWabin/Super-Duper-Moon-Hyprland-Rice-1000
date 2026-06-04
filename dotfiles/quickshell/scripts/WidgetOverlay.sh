#!/bin/bash

status=$(qs ipc call widget getStatus)

if [ "$status" == "false" ]
then
	qs ipc call widget active
else
	qs ipc call widget unactive
fi
