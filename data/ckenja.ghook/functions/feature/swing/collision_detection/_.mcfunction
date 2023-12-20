#> ckenja.ghook:feature/swing/collision_detection/_
#
#
#
# @within function ckenja.ghook:feature/swing/marker

scoreboard players set #feature.swing.collision ckenja.ghook 0
execute positioned ^ ^ ^0.125 if block ~0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~0.9 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~0.9 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~0.9 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~0.9 ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision run scoreboard players set #feature.swing.collision ckenja.ghook 1

#次の探査地点に空間がないけど、近くに移動予定地点があるなら移動予定地点を見てみる
execute if score #feature.swing.collision_detect_loop ckenja.ghook matches 1 if score #feature.swing.collision ckenja.ghook matches 0 if entity @s[distance=..0.125] at @s run function ckenja.ghook:feature/swing/collision_detection/check_and_tp

#次の探査地点に空間がないなら衝突処理をする
#execute if score #feature.swing.collision_detect_loop ckenja.ghook matches 1 if score #feature.swing.collision ckenja.ghook matches 0 run function ckenja.ghook:feature/swing/collision_responce/_

#次の探査地点に空間はあるが、移動予定地点が後ろならそこを見てみる
execute if score #feature.swing.collision_detect_loop ckenja.ghook matches 1 if score #feature.swing.collision ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_detection/check_back

#次の探査地点を探索しないならもうここにする
execute if score #feature.swing.collision_detect_loop ckenja.ghook matches 1 if score #feature.swing.collision ckenja.ghook matches 0 run function ckenja.ghook:feature/swing/collision_detection/tp

#決まってないなら、次の探査地点を探索する
execute if score #feature.swing.collision_detect_loop ckenja.ghook matches 1 if score #feature.swing.collision ckenja.ghook matches 1 positioned ^ ^ ^0.125 run function ckenja.ghook:feature/swing/collision_detection/_
