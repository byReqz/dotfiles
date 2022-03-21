#!/bin/bash

polybar-msg cmd quit
polybar | tee -a /tmp/polybar.log & disown
