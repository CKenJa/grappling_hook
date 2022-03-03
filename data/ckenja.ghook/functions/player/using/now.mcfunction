#> ckenja.ghook:player/using/now
#
#
#
# @within function ckenja.ghook:player/main

tag @s remove ckenja.ghook.player.using_item
tag @s add ckenja.ghook.player.using_item.before
scoreboard players set #flag.jet ckenja.ghook 1
function ckenja.ghook:feature/jet/_