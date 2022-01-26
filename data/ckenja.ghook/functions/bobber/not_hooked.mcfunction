#> ckenja.ghook:bobber/not_hooked
#
#
#
# @within function ckenja.ghook:bobber/master

execute unless block ^ ^ ^1 #ckenja.ghook:no_collision run function ckenja.ghook:bobber/hooking
#視線先
execute store result score #temp.marker_number ckenja.ghook run execute if entity @e[type=marker,tag=ckenja.ghook.marker]
execute if score #temp.marker_number ckenja.ghook matches 0 run summon marker ~ ~ ~ {Tags:["ckenja.ghook.marker"]}
execute if score #temp.marker_number ckenja.ghook matches 2.. run kill @e[tag=ckenja.ghook.marker]
execute if score #temp.marker_number ckenja.ghook matches 2.. run summon marker ~ ~ ~ {Tags:["ckenja.ghook.marker"]}
execute positioned 0.0 0.0 0.0 in overworld positioned ^ ^ ^1 as @e[type=marker,tag=ckenja.ghook.marker] run function ckenja.ghook:marker/sight
data modify entity @s Motion set from storage ckenja.ghook.__temp__: sight