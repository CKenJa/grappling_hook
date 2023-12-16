#> ckenja.ghook:feature/swing/collision_responce/looking_at_function2
#
#
#
# @within function ckenja.ghook:feature/swing/collision_responce/intersection_with_z

tp @s ~ ~ ~
execute store result score #feature.swing.k ckenja.ghook run data get entity @s Pos[0] 10000

scoreboard players operation #feature.swing.k ckenja.ghook = #feature.swing.k ckenja.ghook
scoreboard players operation #feature.swing.k ckenja.ghook -= #player.pos.z ckenja.ghook
scoreboard players operation #feature.swing.k ckenja.ghook *= #10000 ckenja.ghook
scoreboard players operation #feature.swing.k ckenja.ghook /= #moving_vector.z ckenja.ghook

scoreboard players operation #feature.swing.intersection.x ckenja.ghook = #player.pos.x ckenja.ghook
scoreboard players operation #feature.swing.intersection.x ckenja.ghook -= #moving_vector.x ckenja.ghook
scoreboard players operation #feature.swing.intersection.x ckenja.ghook *= #feature.swing.k ckenja.ghook
scoreboard players operation #feature.swing.k ckenja.ghook /= #10000 ckenja.ghook

scoreboard players operation #feature.swing.intersection.y ckenja.ghook = #player.pos.y ckenja.ghook
scoreboard players operation #feature.swing.intersection.y ckenja.ghook -= #moving_vector.y ckenja.ghook
scoreboard players operation #feature.swing.intersection.y ckenja.ghook *= #feature.swing.k ckenja.ghook
scoreboard players operation #feature.swing.k ckenja.ghook /= #10000 ckenja.ghook

scoreboard players operation #feature.swing.intersection.z ckenja.ghook = #feature.swing.k ckenja.ghook

