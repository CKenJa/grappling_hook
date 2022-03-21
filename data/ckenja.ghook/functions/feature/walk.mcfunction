#> ckenja.ghook:feature/walk
#
#
#
# @within function ckenja.ghook:player/main

data modify storage ckenja.ghook.__temp__: pig.data.Motion set from entity @s Motion
execute store result score $intertia.x ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[0] 10000
execute store result score $intertia.y ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[1] 10000
execute store result score $intertia.z ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[2] 10000

execute store result score $player.motion.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[0] 100000
execute store result score $player.motion.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[1] 10000
execute store result score $player.motion.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[2] 100000

scoreboard players operation $intertia.x ckenja.ghook += $player.motion.x ckenja.ghook
scoreboard players operation $intertia.y ckenja.ghook += $player.motion.y ckenja.ghook
scoreboard players operation $intertia.z ckenja.ghook += $player.motion.z ckenja.ghook

execute store result storage ckenja.ghook.__temp__: pig.merge.Motion[0] double 0.0001 run scoreboard players get $intertia.x ckenja.ghook
execute store result storage ckenja.ghook.__temp__: pig.merge.Motion[1] double 0.0001 run scoreboard players get $intertia.y ckenja.ghook
execute store result storage ckenja.ghook.__temp__: pig.merge.Motion[2] double 0.0001 run scoreboard players get $intertia.z ckenja.ghook

data modify entity @s Motion set from storage ckenja.ghook.__temp__: pig.merge.Motion
data modify entity @s Rotation set from storage ckenja.ghook.__temp__: player.data.Rotation
