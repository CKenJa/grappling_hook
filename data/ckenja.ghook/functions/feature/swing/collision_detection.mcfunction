#> ckenja.ghook:feature/swing/collision_detection
#
#
#
# @within function ckenja.ghook:feature/swing/marker

execute store success score #feature.swing.collision ckenja.ghook positioned ^ ^ ^0.125 if block ~0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~0.9 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~0.9 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~0.9 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~0.9 ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision

execute if score #feature.swing.collision ckenja.ghook matches 0 run function ckenja.ghook:feature/swing/collision_responce/_
execute if entity @s[distance=..0.125] at @s run function ckenja.ghook:feature/swing/near

execute if score #feature.swing.collision ckenja.ghook matches 1 unless entity @s[distance=..0.125] positioned ^ ^ ^0.125 run function ckenja.ghook:feature/swing/collision_detection
