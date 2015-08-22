#!/bin/ash

echo
echo
echo "****   logspam  started   ****"
echo
echo "Ctrl-C to abort"
echo "Ctrl-Z to stop"
echo "       bg    to send to background"
echo

tail -n 0 -q -f `find /var/log/ -type f | grep -v ".gz" | grep -v "old" | egrep -v ".[0-9]$" | egrep -v "wtmp|btmp" | xargs`
