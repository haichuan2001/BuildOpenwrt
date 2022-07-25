#!/bin/bash

model="Default string Default string/Default string - "
replace=""
command=s@$model@$replace@
sed -i "$command" /tmp/sysinfo/model

