#!/bin/bash

sudo bash -c "for ((i=0; i<32; i++)); do echo \$i; echo in >/sys/class/gpio/gpio\$i/direction; echo \$i >/sys/class/gpio/unexport; done"

mysql  iot -proot -s -N -se" update GPIO set IsFree=1 ; "
