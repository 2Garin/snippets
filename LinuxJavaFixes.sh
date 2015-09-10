#!/usr/bin/env bash
path_to_jar=$HOME'/repos/LinuxJavaFixes/build/LinuxJavaFixes-1.0.0-SNAPSHOT.jar';
ide_dir=$HOME'/Downloads/';

grep --exclude='*' --include='*64.vmoptions' -L -F 'LinuxJavaFixes' -r "$ide_dir" | while read -r line ; do
    echo "-javaagent:\"$path_to_jar\"" >> "$line";
    echo "$line";
done