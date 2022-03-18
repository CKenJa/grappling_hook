#> ckenja.ghook:feature/move/_
#
#
#
# @within function ckenja.ghook:player/main

execute if score #flag.hooked.init ckenja.ghook matches 1 run scoreboard players operation @s ckenja.ghook.l = #measure ckenja.ghook
scoreboard players reset #measure ckenja.ghook

scoreboard players operation #temp.long ckenja.ghook = @s ckenja.ghook.l
execute as @e[type=pig,tag=ckenja.ghook.pig,distance=..6] if score @s ckenja.ghook = #temp.id ckenja.ghook positioned as @s run function ckenja.ghook:feature/move/pig

#ロープが縮んだら反映
scoreboard players operation @s ckenja.ghook.l -= #temp.long ckenja.ghook
scoreboard players reset #temp.long ckenja.ghook
