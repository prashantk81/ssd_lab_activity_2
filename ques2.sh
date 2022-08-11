#!/bin/bash

path=/etc/shells
cat $path | grep "/usr/" | awk 'BEGIN{FS="/"} {print $NF}'
 

