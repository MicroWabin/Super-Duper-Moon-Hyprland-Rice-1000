#!/bin/bash

status=$(bluetoothctl info 3C:B0:ED:E2:CF:29 | grep "Connected:")

if [ "$status" == "	Connected: no" ]
then
	bluetoothctl connect {add MAC here}
else
	bluetoothctl disconnect {add MAC here}
fi

