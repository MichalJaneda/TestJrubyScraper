#!/bin/sh

if (ps -ax | grep 'NGServer' | grep -v 'grep'); then
    if [[ $1 = 'reset' ]]; then
        kill -9 $(ps -ax | grep 'NGServer' | grep -v 'grep' | cut -f 1 -d " ")
        jruby --ng-server &
    fi
else
    jruby --ng-server &
fi
echo ' '

jruby -d --ng main.rb $*