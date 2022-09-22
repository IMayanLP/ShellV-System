#!/bin/bash

echo 
cat /etc/passwd | sed 's/:/ /g' | awk '{print $1" =>",$6}'