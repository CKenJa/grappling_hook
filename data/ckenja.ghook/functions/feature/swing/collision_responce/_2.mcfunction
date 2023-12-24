#> ckenja.ghook:feature/swing/collision_responce/_2
#
#
#
# @within function ckenja.ghook:feature/swing/collision_responce/_

#衝突向きのベクトルを消したうえで力を再計算する。
    # 残ってる力 = 移動予定地-交点
    scoreboard players operation #feature.swing.vector.x ckenja.ghook = #marker.pos.x ckenja.ghook
    scoreboard players operation #feature.swing.vector.x ckenja.ghook -= #feature.swing.nearest.x ckenja.ghook
    scoreboard players operation #feature.swing.vector.y ckenja.ghook = #marker.pos.y ckenja.ghook
    scoreboard players operation #feature.swing.vector.y ckenja.ghook -= #feature.swing.nearest.y ckenja.ghook
    scoreboard players operation #feature.swing.vector.z ckenja.ghook = #marker.pos.z ckenja.ghook
    scoreboard players operation #feature.swing.vector.z ckenja.ghook -= #feature.swing.nearest.z ckenja.ghook
    
    #storage ckenja.ghook.__temp__: swing.collision_responce.nearest_direction(衝突方向)
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce{nearest_direction:"-X"} run scoreboard players set #feature.swing.vector.x ckenja.ghook 0
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce{nearest_direction:"+X"} run scoreboard players set #feature.swing.vector.x ckenja.ghook 0
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce{nearest_direction:"-Z"} run scoreboard players set #feature.swing.vector.z ckenja.ghook 0
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce{nearest_direction:"+Z"} run scoreboard players set #feature.swing.vector.z ckenja.ghook 0
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce{nearest_direction:"-Y"} run scoreboard players set #feature.swing.vector.y ckenja.ghook 0
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce{nearest_direction:"+Y"} run scoreboard players set #feature.swing.vector.y ckenja.ghook 0
    scoreboard players operation #feature.swing.vector.x ckenja.ghook += #feature.swing.intersection.x ckenja.ghook
    scoreboard players operation #feature.swing.vector.y ckenja.ghook += #feature.swing.intersection.y ckenja.ghook
    scoreboard players operation #feature.swing.vector.z ckenja.ghook += #feature.swing.intersection.z ckenja.ghook
    
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #feature.swing.vector.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #feature.swing.vector.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #feature.swing.vector.z ckenja.ghook
    data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos
    execute at @s run function ckenja.ghook:feature/swing/collision_detection/tp
    scoreboard players set #feature.swing.collision_detect_loop ckenja.ghook 0
