#> ckenja.ghook:player/using/exit
#
#
#
# @within function ckenja.ghook:player/using/before

execute store success score #temp.using.exit ckenja.ghook run execute if entity @s[tag=ckenja.ghook.player.using_item.first_exit]
execute if score #temp.using.exit ckenja.ghook matches 1 run scoreboard players set #flag.hook.kill ckenja.ghook 1
execute if score #temp.using.exit ckenja.ghook matches 0 run tag @s add ckenja.ghook.player.using_item.first_exit