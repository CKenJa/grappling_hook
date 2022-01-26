#> ckenja.ghook:pig/not_hooked
#
#
#
# @within function ckenja.ghook:pig/_
execute store result score #temp.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.Motion[0] 100000
execute store result score #temp.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.Motion[1] 100000
execute store result score #temp.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.Motion[2] 100000
data modify storage ckenja.ghook.__temp__: pig.not_hooked set from entity @s Motion
execute store result score #temp.x.motion ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.not_hooked[0] 10000
execute store result score #temp.y.motion ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.not_hooked[1] 10000
execute store result score #temp.z.motion ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.not_hooked[2] 10000
scoreboard players operation #temp.x ckenja.ghook += #temp.x.motion ckenja.ghook 
scoreboard players operation #temp.y ckenja.ghook += #temp.y.motion ckenja.ghook 
scoreboard players operation #temp.z ckenja.ghook += #temp.z.motion ckenja.ghook 

execute store result storage ckenja.ghook.__temp__: pig.not_hooked[0] double 0.0001 run scoreboard players get #temp.x ckenja.ghook
execute store result storage ckenja.ghook.__temp__: pig.not_hooked[1] double 0.0001 run scoreboard players get #temp.y ckenja.ghook
execute store result storage ckenja.ghook.__temp__: pig.not_hooked[2] double 0.0001 run scoreboard players get #temp.z ckenja.ghook
data modify entity @s Motion set from storage ckenja.ghook.__temp__: pig.not_hooked