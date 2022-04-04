#!/usr/bin/env bash

main() {
    JSON=$(curl -s https://www.githubstatus.com/api/v2/status.json)
    if [[ $? == 0 ]] ; then
        which jq  >/dev/null 2>&1
        if [[ $? == 0 ]] ; then
            echo "$JSON" | jq -r '.status.description'
        else
            echo "[jq unavail]"
        fi
    fi
}

main