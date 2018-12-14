#!/bin/bash
fname="/root/explorer/tmp/index.pid"
if [[ -f "$fname" ]];
then
        pid=$(</root/explorer/tmp/index.pid)
        echo $pid
        ps ax $pid > /dev/null
        r=$?
        echo $r
        if [ $r -eq 0 ]; then
                exit 1
        else
                rm $fname
        fi
fi
