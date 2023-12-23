execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #feature.swing.nearest.x ckenja.ghook
execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #feature.swing.nearest.y ckenja.ghook
execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #feature.swing.nearest.z ckenja.ghook
data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos

#衝突向きのベクトルを消したうえで力を再計算する。
#execute at @s run function ckenja.ghook:feature/swing/collision_responce/_3
#execute at @s run function ckenja.ghook:feature/swing/collision_detection/tp
scoreboard players set #feature.swing.collision_detect_loop ckenja.ghook 0

#execute positioned ~0.3 ~ ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!
#execute positioned ~0.3 ~ ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!
#execute positioned ~-0.3 ~ ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!
#execute positioned ~-0.3 ~ ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!
#execute positioned ~0.3 ~0.9 ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!
#execute positioned ~0.3 ~0.9 ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!
#execute positioned ~-0.3 ~0.9 ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!
#execute positioned ~-0.3 ~0.9 ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!
#execute positioned ~0.3 ~1.8 ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!
#execute positioned ~0.3 ~1.8 ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!
#execute positioned ~-0.3 ~1.8 ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!
#execute positioned ~-0.3 ~1.8 ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision run say error!

#execute positioned ~0.3 ~ ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
#execute positioned ~0.3 ~ ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
#execute positioned ~-0.3 ~ ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
#execute positioned ~-0.3 ~ ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
#execute positioned ~0.3 ~0.9 ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
#execute positioned ~0.3 ~0.9 ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
#execute positioned ~-0.3 ~0.9 ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
#execute positioned ~-0.3 ~0.9 ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
#execute positioned ~0.3 ~1.8 ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
#execute positioned ~0.3 ~1.8 ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
#execute positioned ~-0.3 ~1.8 ~0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
#execute positioned ~-0.3 ~1.8 ~-0.3 unless block ~ ~ ~ #ckenja.ghook:no_collision as @a run gamemode spectator
