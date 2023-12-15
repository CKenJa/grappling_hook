#> ckenja.ghook:feature/swing/near
#
#
#
# @within function ckenja.ghook:feature/swing/collision_detection

execute if block ~0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~0.9 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~0.9 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~0.9 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~0.9 ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision as @a[tag=ckenja.ghook.feature.swing.player,distance=..120] on vehicle run tp @s ~ ~0.6 ~
scoreboard players set #feature.swing.collision ckenja.ghook 0
scoreboard players set #feature.swing.collision.neared ckenja.ghook 0
