    # #feature.swing.intersection(実際の移動先座標) - #player.pos(現在の座標) = 実際の移動距離
    scoreboard players operation #feature.swing.displacement.x ckenja.ghook = #feature.swing.intersection.x ckenja.ghook
    scoreboard players operation #feature.swing.displacement.x ckenja.ghook -= #player.pos.x ckenja.ghook
    scoreboard players operation #feature.swing.displacement.y ckenja.ghook = #feature.swing.intersection.y ckenja.ghook
    scoreboard players operation #feature.swing.displacement.y ckenja.ghook -= #player.pos.y ckenja.ghook
    scoreboard players operation #feature.swing.displacement.z ckenja.ghook = #feature.swing.intersection.z ckenja.ghook
    scoreboard players operation #feature.swing.displacement.z ckenja.ghook -= #player.pos.z ckenja.ghook

    # #moving_vector(本来の移動距離) - 実際の移動距離 = 残ってる力
    scoreboard players operation #feature.swing.vector.x ckenja.ghook = #moving_vector.x ckenja.ghook
    scoreboard players operation #feature.swing.vector.x ckenja.ghook -= #feature.swing.displacement.x ckenja.ghook
    scoreboard players operation #feature.swing.vector.y ckenja.ghook = #moving_vector.y ckenja.ghook
    scoreboard players operation #feature.swing.vector.y ckenja.ghook -= #feature.swing.displacement.y ckenja.ghook
    scoreboard players operation #feature.swing.vector.z ckenja.ghook = #moving_vector.z ckenja.ghook
    scoreboard players operation #feature.swing.vector.z ckenja.ghook -= #feature.swing.displacement.z ckenja.ghook
    
    #storage ckenja.ghook.__temp__: swing.collision_responce.nearest_direction(衝突方向)
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce.direction{direction:"-X"} run scoreboard players set #feature.swing.vector.x ckenja.ghook 0
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce.direction{direction:"+X"} run scoreboard players set #feature.swing.vector.x ckenja.ghook 0
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce.direction{direction:"-Z"} run scoreboard players set #feature.swing.vector.z ckenja.ghook 0
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce.direction{direction:"+Z"} run scoreboard players set #feature.swing.vector.z ckenja.ghook 0
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce.direction{direction:"-Y"} run scoreboard players set #feature.swing.vector.y ckenja.ghook 0
    execute if data storage ckenja.ghook.__temp__: swing.collision_responce.direction{direction:"+Y"} run scoreboard players set #feature.swing.vector.y ckenja.ghook 0
    scoreboard players operation #feature.swing.vector.x ckenja.ghook += #swing.intersection.x ckenja.ghook
    scoreboard players operation #feature.swing.vector.y ckenja.ghook += #swing.intersection.y ckenja.ghook
    scoreboard players operation #feature.swing.vector.z ckenja.ghook += #swing.intersection.z ckenja.ghook
    
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #feature.swing.vector.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #feature.swing.vector.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #feature.swing.vector.z ckenja.ghook
    data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos
    execute facing entity @s feet positioned as @s as @a[tag=ckenja.ghook.feature.swing.player,distance=..120] on vehicle run tp @s ~ ~0.6 ~
