#!/bin/bash

ip addr | grep 'inet ' | sed 's/.*inet \([0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\).*/\1/g' | sed 's/127\.0\.0\.1//g' | sed '/^$/d'
