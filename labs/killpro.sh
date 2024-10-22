#!/bin/bash

process=$1

ps -ef | grep "$process" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}

