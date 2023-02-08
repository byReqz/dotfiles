#!/bin/bash
icon=""
primary="$icon primary only"
secondary="$icon secondary only"
mirror="$icon mirror"
top="$icon extend top"
left="$icon extend left"
right="$icon extend right"
bottom="$icon extend bottom"
duplicate="$icon duplicate"
fullhd="$icon fallback to 1080p"
wqhd="$icon fallback to 1440p"

action="$(echo -e "\
$mirror
$duplicate
$primary
$secondary
$top
$left
$right
$bottom
$fullhd
$wqhd" | rofi -dmenu -p "monitor settings" -markup-rows)"

case "$action" in
    $mirror)
		mons -m
        ;;
    $duplicate)
		mons -d
        ;;
    $primary)
		mons -o
        ;;
    $secondary)
		mons -d
        ;;
    $top)
		mons -e top
        ;;
    $left)
		mons -e left
        ;;
    $right)
		mons -e right
        ;;
    $bottom)
		mons -e bottom
        ;;
    $fullhd)
        xrandr --output eDP1 --mode 1920x1080
        ;;
    $wqhd)
        xrandr --output eDP1 --mode 2560x1440
        ;;
esac
