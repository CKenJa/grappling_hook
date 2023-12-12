#> ckenja.ghook:tick
#
# 毎tick
#
# @within tag/function minecraft:tick

scoreboard players add #nofall_timer ckenja.ghook 1
execute as @a at @s run function ckenja.ghook:player/tick
execute if score #nofall_timer ckenja.ghook matches 3.. run scoreboard players reset #nofall_timer ckenja.ghook
