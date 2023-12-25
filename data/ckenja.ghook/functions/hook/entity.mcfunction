execute as @e[type=creeper,tag=ckenja.ghook.target_entity,distance=..8] if score @s ckenja.ghook = #temp.id ckenja.ghook run data modify storage ckenja.ghook.__temp__: hook.creeper.Pos set from entity @s Pos
execute store result score #hook.creeper.x ckenja.ghook run data get storage ckenja.ghook.__temp__: hook.creeper.Pos[0] 10000
execute store result score #hook.creeper.y ckenja.ghook run data get storage ckenja.ghook.__temp__: hook.creeper.Pos[1] 10000
execute store result score #hook.creeper.z ckenja.ghook run data get storage ckenja.ghook.__temp__: hook.creeper.Pos[2] 10000
scoreboard players operation #hook.creeper.x ckenja.ghook += @s ckenja.ghook.hook.x
scoreboard players operation #hook.creeper.y ckenja.ghook += @s ckenja.ghook.hook.y
scoreboard players operation #hook.creeper.z ckenja.ghook += @s ckenja.ghook.hook.z
execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #hook.creeper.x ckenja.ghook
execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #hook.creeper.y ckenja.ghook
execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #hook.creeper.z ckenja.ghook
data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos
