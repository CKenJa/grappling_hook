# 前後検知
execute facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
# positioned ^ ^ ^0.125 rotated as @s positioned ^ ^ ^0.125 if entity @s[distance=..0.01] 
execute at @s run function ckenja.ghook:feature/swing/collision_detection/check_and_tp
