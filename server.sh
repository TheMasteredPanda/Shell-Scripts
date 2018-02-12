#!/bin/bash
while true; do
	java -Xmx8G -Xms8G -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=45 -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=50 -XX:+AggressiveOpts -jar *.jar
	for i in {5..1}; do
		echo "Proxy will start up in $i seconds. If you want to stop this press C^."
		sleep 1
	done
done
