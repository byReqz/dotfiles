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

action="$(echo -e "\
$mirror
$duplicate
$primary
$secondary
$top
$left
$right
$bottom" | rofi -dmenu -p "monitor settings" -markup-rows)"

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
esac
