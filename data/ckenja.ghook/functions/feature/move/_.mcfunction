#> ckenja.ghook:feature/move/_
#
#
#
# @within function ckenja.ghook:player/**

data modify storage ckenja.ghook.__temp__: player.data.Motion set from entity @s Motion
data modify storage ckenja.ghook.__temp__: player.data.Rotation set from entity @s Rotation
scoreboard players operation #temp.long ckenja.ghook = @s ckenja.ghook.l
execute as @e[type=pig,tag=ckenja.ghook.pig,distance=..6] if score @s ckenja.ghook = #temp.id ckenja.ghook positioned as @s run function ckenja.ghook:feature/move/pig

#ロープが縮んだら反映
execute if score #temp.long ckenja.ghook matches 1.. run scoreboard players operation @s ckenja.ghook.l = #temp.long ckenja.ghook
scoreboard players reset #temp.long ckenja.ghook
