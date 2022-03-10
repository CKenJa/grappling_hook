#> ckenja.ghook:feature/walk
#
#
#
# @within function ckenja.ghook:player/main

execute store result score $intertia.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[0] 10000
execute store result score $intertia.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[0] 10000
execute store result score $intertia.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[0] 10000

execute store result storage ckenja.ghook.__temp__: pig.merge.Pos[0] double 0.0001 run scoreboard players get $intertia.x ckenja.ghook
execute store result storage ckenja.ghook.__temp__: pig.merge.Pos[1] double 0.0001 run scoreboard players get $intertia.y ckenja.ghook
execute store result storage ckenja.ghook.__temp__: pig.merge.Pos[2] double 0.0001 run scoreboard players get $intertia.z ckenja.ghook

data modify entity @s Motion set from storage ckenja.ghook.__temp__: pig.merge.Motion
data modify entity @s Rotation set from storage ckenja.ghook.__temp__: player.data.Rotation
