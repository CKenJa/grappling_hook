#> ckenja.ghook:player/shot_crossbow/before
#
#
#
# @within function ckenja.ghook:player/main

tag @s remove ckenja.ghook.player.shot_crossbow.before
execute if entity @s[tag=!ckenja.ghook.player.shot_crossbow] run function ckenja.ghook:player/shot_crossbow/exit
