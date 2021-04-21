#!/bin/bash

times=5
while [ $times -gt 0 ];
do
  date
  curl -s http://api.open-notify.org/iss-now.json | jq .iss_position
  times=$(($times-1))
done