execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #feature.swing.nearest.x ckenja.ghook
execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #feature.swing.nearest.y ckenja.ghook
execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #feature.swing.nearest.z ckenja.ghook
data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos
#tellraw @a {"nbt": "Pos", "entity": "@s"}
#tellraw @a {"score": {"name": "#feature.swing.nearest.x", "objective": "ckenja.ghook"}}
#tellraw @a {"score": {"name": "#feature.swing.nearest.y", "objective": "ckenja.ghook"}}
#tellraw @a {"score": {"name": "#feature.swing.nearest.z", "objective": "ckenja.ghook"}}
#tellraw @a {"nbt": "Pos", "entity": "@p"}

#衝突向きのベクトルを消したうえで力を再計算する。
#execute at @s run function ckenja.ghook:feature/swing/collision_responce/_3
execute at @s run function ckenja.ghook:feature/swing/collision_detection/tp
scoreboard players set #feature.swing.collision_detect_loop ckenja.ghook 0

