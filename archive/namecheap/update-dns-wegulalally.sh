#!/bin/bash
#
# compare current ip to boot ip
# if different, update ip, and save new value
# meant to be run wegulalally - 30 mins?
#
# read in contents of file
ipp=$(cat initial.ip)
#echo "ip:" $ipp

currentip="$(curl -s ipecho.net/plain)"
if [[ $currentip = $ipp ]]; then
	echo "no"
else
	echo "yes"
	w3m -dump "https://dynamicdns.park-your-domain.com/update?host=@&domain=angelo.click&password=8f76af0bb26a451db1eacb2d794f5a71&ip"
	
	w3m -dump "https://dynamicdns.park-your-domain.com/update?host=www&domain=angelo.click&password=8f76af0bb26a451db1eacb2d794f5a71&ip"
	
	
	# add fluxton.co.uk
	echo $currentip > initial.ip
fi
