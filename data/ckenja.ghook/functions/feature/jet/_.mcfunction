#> ckenja.ghook:feature/jet/_
#
#
#
# @within function ckenja.ghook:player/using/now

execute positioned 0 0 0 in minecraft:overworld store success score #temp.query ckenja.ghook run forceload add ~ ~
execute rotated as @s positioned 0 0 0 in minecraft:overworld run summon marker ^ ^ ^1 {Tags:["ckenja.ghook.marker"]}
execute as @e[type=marker,tag=ckenja.ghook.marker] run data modify storage ckenja.ghook.__temp__: marker.data.Pos set from entity @s Pos
execute as @e[type=marker,tag=ckenja.ghook.marker] run kill @s
execute positioned 0 0 0 in minecraft:overworld if score #temp.query ckenja.ghook matches 1 run forceload remove ~ ~

say jet