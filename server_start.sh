#!/bin/bash
while true; do
	java -Xms1G -Xmx1G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=50 -XX:+AggressiveOpts -XX:+AlwaysPreTouch -Dusing.aikars.flags=mcflags.emc.gs -jar *.jar

	for i in {5..1}; do
		echo "Starting server in $i seconds. To stop this press C^."
		sleep 1
	done
done
