#> ckenja.ghook:feature/swing/collision_responce/looking_at_function2
#
#
#
# @within function ckenja.ghook:feature/swing/collision_responce/intersection_with_x

tp @s ~ ~ ~
execute store result score #feature.swing.k ckenja.ghook run data get entity @s Pos[0] 10000

scoreboard players operation #feature.swing.t ckenja.ghook = #feature.swing.k ckenja.ghook
scoreboard players operation #feature.swing.t ckenja.ghook -= #start_ray.x ckenja.ghook
scoreboard players operation #feature.swing.t ckenja.ghook *= #10000 ckenja.ghook
scoreboard players operation #feature.swing.t ckenja.ghook /= #moving_vector.x ckenja.ghook

scoreboard players operation #feature.swing.intersection.x ckenja.ghook = #feature.swing.k ckenja.ghook

scoreboard players operation #feature.swing.intersection.y ckenja.ghook = #feature.swing.t ckenja.ghook
scoreboard players operation #feature.swing.intersection.y ckenja.ghook *= #moving_vector.y ckenja.ghook
scoreboard players operation #feature.swing.intersection.y ckenja.ghook /= #10000 ckenja.ghook
scoreboard players operation #feature.swing.intersection.y ckenja.ghook += #start_ray.y ckenja.ghook

scoreboard players operation #feature.swing.intersection.z ckenja.ghook = #feature.swing.t ckenja.ghook
scoreboard players operation #feature.swing.intersection.z ckenja.ghook *= #moving_vector.z ckenja.ghook
scoreboard players operation #feature.swing.intersection.z ckenja.ghook /= #10000 ckenja.ghook
scoreboard players operation #feature.swing.intersection.z ckenja.ghook += #start_ray.z ckenja.ghook

execute if score #moving_vector.x ckenja.ghook matches 0 run scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
