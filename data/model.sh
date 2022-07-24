#!/bin/bash

sed -i 's/default//Ig' /tmp/sysinfo/model
sed -i 's/string//Ig' /tmp/sysinfo/model
sed -i 's/^[ \t]*//g' /tmp/sysinfo/model
sed -i 's/[ \t]*$//g' /tmp/sysinfo/model
