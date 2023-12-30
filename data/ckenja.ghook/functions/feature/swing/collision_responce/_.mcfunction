#> ckenja.ghook:feature/swing/collision_responce/_
#
#
#
# @within function ckenja.ghook:feature/swing/collision_detection/_

    scoreboard players set #feature.swing.nearest.range ckenja.ghook 2147483647

#移動予定地と現座標の差を、この1tickの運動の近似として使う
    data modify storage ckenja.ghook.__temp__: feature.swing.collision_responce.Pos set from entity @s Pos
    execute store result score #marker.pos.x ckenja.ghook run data get storage ckenja.ghook.__temp__: feature.swing.collision_responce.Pos[0] 10000
    execute store result score #marker.pos.y ckenja.ghook run data get storage ckenja.ghook.__temp__: feature.swing.collision_responce.Pos[1] 10000
    execute store result score #marker.pos.z ckenja.ghook run data get storage ckenja.ghook.__temp__: feature.swing.collision_responce.Pos[2] 10000
    scoreboard players operation #moving_vector.x ckenja.ghook = #marker.pos.x ckenja.ghook
    scoreboard players operation #moving_vector.y ckenja.ghook = #marker.pos.y ckenja.ghook
    scoreboard players operation #moving_vector.z ckenja.ghook = #marker.pos.z ckenja.ghook
    scoreboard players operation #moving_vector.x ckenja.ghook -= #player.pos.x ckenja.ghook
    scoreboard players operation #moving_vector.y ckenja.ghook -= #player.pos.y ckenja.ghook
    scoreboard players operation #moving_vector.z ckenja.ghook -= #player.pos.z ckenja.ghook

#looking_at_functionで各点がどの面に衝突しうるか調べ、その面と移動ベクトルの交点を求める
    scoreboard players set #feature.swing.relative.y ckenja.ghook 0

    scoreboard players set #feature.swing.relative.x ckenja.ghook 3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook 3000
    execute positioned ~0.3 ~ ~0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

    scoreboard players set #feature.swing.relative.x ckenja.ghook -3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook 3000
    execute positioned ~-0.3 ~ ~0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

    scoreboard players set #feature.swing.relative.x ckenja.ghook 3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook -3000
    execute positioned ~0.3 ~ ~-0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

    scoreboard players set #feature.swing.relative.x ckenja.ghook -3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook -3000
    execute positioned ~-0.3 ~ ~-0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

    scoreboard players set #feature.swing.relative.y ckenja.ghook 9000

    scoreboard players set #feature.swing.relative.x ckenja.ghook 3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook 3000
    execute positioned ~0.3 ~0.9 ~0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

    scoreboard players set #feature.swing.relative.x ckenja.ghook -3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook 3000
    execute positioned ~-0.3 ~0.9 ~0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

    scoreboard players set #feature.swing.relative.x ckenja.ghook 3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook -3000
    execute positioned ~0.3 ~0.9 ~-0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

    scoreboard players set #feature.swing.relative.x ckenja.ghook -3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook -3000
    execute positioned ~-0.3 ~0.9 ~-0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

    scoreboard players set #feature.swing.relative.y ckenja.ghook 18000

    scoreboard players set #feature.swing.relative.x ckenja.ghook 3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook 3000
    execute positioned ~0.3 ~1.8 ~0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

    scoreboard players set #feature.swing.relative.x ckenja.ghook -3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook 3000
    execute positioned ~-0.3 ~1.8 ~0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

    scoreboard players set #feature.swing.relative.x ckenja.ghook 3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook -3000
    execute positioned ~0.3 ~1.8 ~-0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

    scoreboard players set #feature.swing.relative.x ckenja.ghook -3000
    scoreboard players set #feature.swing.relative.z ckenja.ghook -3000
    execute positioned ~-0.3 ~1.8 ~-0.3 run function ckenja.ghook:feature/swing/collision_responce/get_intersection

#もっとも近い交点に位置を変更する
    execute unless score #feature.swing.nearest.range ckenja.ghook matches 2147483647 run function ckenja.ghook:feature/swing/collision_responce/_2
