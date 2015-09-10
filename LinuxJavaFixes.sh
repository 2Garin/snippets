#!/usr/bin/env bash

for i in $(grep --exclude='*' --include='*64.vmoptions' -L -F 'LinuxJavaFixes' -r ~/Downloads/); do
	echo "-javaagent:\"$HOME/repos/LinuxJavaFixes/build/LinuxJavaFixes-1.0.0-SNAPSHOT.jar\"" >> "$i";
	echo "$i";
done