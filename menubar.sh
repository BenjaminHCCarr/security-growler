#!/bin/sh

SERVICE="growler.py"

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    echo "Secuirty Growler is running. 🍺"
    cat /tmp/security-growler.log
else
    echo "Secuirty Growler is not running. ☹"
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    python "$DIR"/growler.py > /tmp/security-growler.err 2>&1 &
fi