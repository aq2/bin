#!/bin/bash
#
# write ip to file
# curl -s supresses output
initialip="$(curl -s ipecho.net/plain)"
echo $initialip > initial.ip