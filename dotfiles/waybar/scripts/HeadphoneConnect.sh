#!/bin/bash

status=$(bluetoothctl info {add MAC here} | grep "Connected:")

if [ "$status" == "	Connected: no" ]
then
	bluetoothctl connect {add MAC here}
else
	bluetoothctl disconnect {add MAC here}
fi

