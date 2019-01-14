#!/bin/sh
chmod +x ./job_scheduler.rb

git_job() {
  case "$1" in
    "add")
    echo $2 >> commits.txt
    echo "$2 added to commit list"
    return 0
    ;;
    "schedule")
    shift
    git_job sha remotename remotebranchname timeinterval
    SEND_IN=`$4*3600`
    sleep $SEND_IN
    
    git rebase -i
    if [ "$1" == "no-sha" ]; then
        shift
        git push $1 $2 $SEND_IN
        return 0
    fi
    SHA="$1:$3"
    git push $2 $SHA
    return 0
    ;;
  esac
}
