#> ckenja.ghook:feature/swing/collision
#
#
#
# @within function ckenja.ghook:feature/swing/marker

execute store success score #feature.swing.collision ckenja.ghook positioned ^ ^ ^0.125 if block ~0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~0.9 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~0.9 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~0.9 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~0.9 ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision

execute if score #feature.swing.collision ckenja.ghook matches 0 as @a[tag=ckenja.ghook.feature.swing.player,distance=..120] on vehicle run tp @s ~ ~0.6 ~

execute if entity @s[distance=..0.125] run function ckenja.ghook:feature/swing/near

execute if score #feature.swing.collision ckenja.ghook matches 1 unless entity @s[distance=..0.125] positioned ^ ^ ^0.125 run function ckenja.ghook:feature/swing/collision
