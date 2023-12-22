# 前後検知
execute facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
execute store result score #feature.swing.collision_detection.check_back ckenja.ghook positioned as @s positioned ^ ^ ^0.125 rotated as @s positioned ^ ^ ^-0.125 if entity @s[distance=..0.001]
execute if score #feature.swing.collision_detection.check_back ckenja.ghook matches 1 at @s run function ckenja.ghook:feature/swing/collision_detection/check_and_tp
execute if score #feature.swing.collision_detection.check_back ckenja.ghook matches 0 run function ckenja.ghook:feature/swing/collision_detection/tp
