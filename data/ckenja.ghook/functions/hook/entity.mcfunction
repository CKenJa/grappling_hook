scoreboard players set #hook.have_entity ckenja.ghook 0 
execute at @s as @e[type=#ckenja.ghook:hookable_entity,tag=ckenja.ghook.target_entity,distance=..8] if score @s ckenja.ghook = #temp.id ckenja.ghook run function ckenja.ghook:hook/entity2
execute if score #hook.have_entity ckenja.ghook matches 0 run scoreboard players set #flag.hook.kill ckenja.ghook 0
execute store result score #hook.target_entity.x ckenja.ghook run data get storage ckenja.ghook.__temp__: hook.target_entity.Pos[0] 10000
execute store result score #hook.target_entity.y ckenja.ghook run data get storage ckenja.ghook.__temp__: hook.target_entity.Pos[1] 10000
execute store result score #hook.target_entity.z ckenja.ghook run data get storage ckenja.ghook.__temp__: hook.target_entity.Pos[2] 10000
scoreboard players operation #hook.target_entity.x ckenja.ghook += @s ckenja.ghook.hook.x
scoreboard players operation #hook.target_entity.y ckenja.ghook += @s ckenja.ghook.hook.y
scoreboard players operation #hook.target_entity.z ckenja.ghook += @s ckenja.ghook.hook.z
execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #hook.target_entity.x ckenja.ghook
execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #hook.target_entity.y ckenja.ghook
execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #hook.target_entity.z ckenja.ghook
data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos
