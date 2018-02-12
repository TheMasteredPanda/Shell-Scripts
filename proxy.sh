#!/bin/bash
while true; do
	java -Xmx2G -Xms2G -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100  -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=60 -XX:InitiatingHeapOccupancyPercent=30 -XX:TargetSurvivorRatio=90 -Dusing.aikars.suggestion=http://emc.gs/W -jar *.jar
	for i in {5..1}; do
		echo "Proxy will start up in $i seconds. If you want to stop this press C^."
		sleep 1
	done
done
