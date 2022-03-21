#> ckenja.ghook:feature/move/jet
#
#
#
# @within function ckenja.ghook:feature/move/pig

execute positioned 0.0 0.0 0.0 in minecraft:overworld store success score #temp.query ckenja.ghook run forceload add ~ ~
execute rotated as @s positioned 0.0 0.0 0.0 in minecraft:overworld run summon marker ^ ^ ^0.05 {Tags:["ckenja.ghook.marker"]}
execute as @e[type=marker,tag=ckenja.ghook.marker] run function ckenja.ghook:feature/move/jet.marker
execute positioned 0.0 0.0 0.0 in minecraft:overworld if score #temp.query ckenja.ghook matches 1 run forceload remove ~ ~
execute store result score $jet.x ckenja.ghook run data get storage ckenja.ghook.__temp__: marker.data.Pos[0] 10000
execute store result score $jet.y ckenja.ghook run data get storage ckenja.ghook.__temp__: marker.data.Pos[1] 10000
execute store result score $jet.z ckenja.ghook run data get storage ckenja.ghook.__temp__: marker.data.Pos[2] 10000
scoreboard players operation $intertia.x ckenja.ghook += $jet.x ckenja.ghook
scoreboard players operation $intertia.y ckenja.ghook += $jet.y ckenja.ghook
scoreboard players operation $intertia.z ckenja.ghook += $jet.z ckenja.ghook

