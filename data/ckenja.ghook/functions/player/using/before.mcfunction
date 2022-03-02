#> ckenja.ghook:player/using/before
#
#
#
# @within function ckenja.ghook:player/main

tag @s remove ckenja.ghook.player.using_item.before
execute if entity @s[tag=!ckenja.ghook.player.using_item] run function ckenja.ghook:player/using/exit