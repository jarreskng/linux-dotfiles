#!/bin/sh

urxvtd -q -f -o
xrdb ~/.xresources

exec i3
