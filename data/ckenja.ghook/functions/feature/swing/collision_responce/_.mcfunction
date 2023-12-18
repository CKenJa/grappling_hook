#> ckenja.ghook:feature/swing/collision_responce/_
#
#
#
# @within function ckenja.ghook:feature/swing/collision_detection

    scoreboard players set #feature.swing.nearest.range ckenja.ghook 2147483647

    #looking_at_functionで各点がどの面に衝突しうるか調べ、その面と移動ベクトルの交点を求める
    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~0.3 ~ ~0.3 run function ckenja.looking_at_function:run
    #scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range

    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~-0.3 ~ ~0.3 run function ckenja.looking_at_function:run
    #scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range

    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~0.3 ~ ~-0.3 run function ckenja.looking_at_function:run
    #scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range

    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~-0.3 ~ ~-0.3 run function ckenja.looking_at_function:run
    #scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range


    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~0.3 ~0.9 ~0.3 run function ckenja.looking_at_function:run
    #scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.y ckenja.ghook 9000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range

    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~-0.3 ~0.9 ~0.3 run function ckenja.looking_at_function:run
    #scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.y ckenja.ghook 9000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range

    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~0.3 ~0.9 ~-0.3 run function ckenja.looking_at_function:run
    #scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.y ckenja.ghook 9000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range

    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~-0.3 ~0.9 ~-0.3 run function ckenja.looking_at_function:run
    #scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.y ckenja.ghook 9000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range


    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~0.3 ~1.8 ~0.3 run function ckenja.looking_at_function:run
    #scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.y ckenja.ghook 18000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range

    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~-0.3 ~1.8 ~0.3 run function ckenja.looking_at_function:run
    #scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.y ckenja.ghook 18000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range

    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~0.3 ~1.8 ~-0.3 run function ckenja.looking_at_function:run
    #scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.y ckenja.ghook 18000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range

    scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
    data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
    data modify storage ckenja.looking_at_function:_ steps set value 3
    execute positioned ~-0.3 ~1.8 ~-0.3 run function ckenja.looking_at_function:run
    #scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
    #scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
    #scoreboard players remove #feature.swing.intersection.y ckenja.ghook 18000
    execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range

#もっとも近い交点に位置を変更する
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #feature.swing.nearest.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #feature.swing.nearest.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #feature.swing.nearest.z ckenja.ghook
    data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos

#衝突向きのベクトルを消したうえで力を再計算する。
    #execute at @s run function ckenja.ghook:feature/swing/collision_responce/_2
    execute at @s run function ckenja.ghook:feature/swing/tp
