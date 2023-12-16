#> ckenja.ghook:feature/swing/collision_responce/_
#
#
#
# @within function ckenja.ghook:feature/swing/collision_detection

scoreboard players set #feature.swing.nearest.range ckenja.ghook 2147483647

#looking_at_functionで各点がどの面に衝突しうるか調べ、その面と移動ベクトルの交点を求める
data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~0.3 ~ ~0.3 run function ckenja.looking_at_function:run
scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
function ckenja.ghook:feature/swing/collision_responce/calc_range

data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~-0.3 ~ ~0.3 run function ckenja.looking_at_function:run
scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
function ckenja.ghook:feature/swing/collision_responce/calc_range

data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~0.3 ~ ~-0.3 run function ckenja.looking_at_function:run
scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
function ckenja.ghook:feature/swing/collision_responce/calc_range

data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~-0.3 ~ ~-0.3 run function ckenja.looking_at_function:run
scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
function ckenja.ghook:feature/swing/collision_responce/calc_range


data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~0.3 ~0.9 ~0.3 run function ckenja.looking_at_function:run
scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 9000
function ckenja.ghook:feature/swing/collision_responce/calc_range

data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~-0.3 ~0.9 ~0.3 run function ckenja.looking_at_function:run
scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 9000
function ckenja.ghook:feature/swing/collision_responce/calc_range

data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~0.3 ~0.9 ~-0.3 run function ckenja.looking_at_function:run
scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 9000
function ckenja.ghook:feature/swing/collision_responce/calc_range

data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~-0.3 ~0.9 ~-0.3 run function ckenja.looking_at_function:run
scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 9000
function ckenja.ghook:feature/swing/collision_responce/calc_range


data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~0.3 ~1.8 ~0.3 run function ckenja.looking_at_function:run
scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 18000
function ckenja.ghook:feature/swing/collision_responce/calc_range

data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~-0.3 ~1.8 ~0.3 run function ckenja.looking_at_function:run
scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 18000
function ckenja.ghook:feature/swing/collision_responce/calc_range

data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~0.3 ~1.8 ~-0.3 run function ckenja.looking_at_function:run
scoreboard players remove #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 18000
function ckenja.ghook:feature/swing/collision_responce/calc_range

data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:swing/collision_responce/looking_at_function"
execute positioned ~-0.3 ~1.8 ~-0.3 run function ckenja.looking_at_function:run
scoreboard players add #feature.swing.intersection.x ckenja.ghook 3000
scoreboard players add #feature.swing.intersection.z ckenja.ghook 3000
scoreboard players remove #feature.swing.intersection.z ckenja.ghook 18000
function ckenja.ghook:feature/swing/collision_responce/calc_range

#もっとも近い交点に位置を変更する
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #feature.swing.intersection.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #feature.swing.intersection.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #feature.swing.intersection.z ckenja.ghook
    data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos

#本来の移動距離と実際の移動距離の差から衝突時間を求める

#衝突向きのベクトルを消したうえで力を再計算する。
execute as @a[tag=ckenja.ghook.feature.swing.player,distance=..120] on vehicle run tp @s ~ ~0.6 ~
