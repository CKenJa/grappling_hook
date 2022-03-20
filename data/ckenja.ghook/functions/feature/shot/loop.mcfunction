#> ckenja.ghook:feature/shot/loop
#
#
#
# @within function ckenja.ghook:feature/shot/init

particle crit ~ ~ ~

scoreboard players add #measure ckenja.ghook 250
execute store success score #flag.hooked.init ckenja.ghook run execute unless block ~ ~ ~ #ckenja.ghook:no_collision
execute if score #flag.hooked.init ckenja.ghook matches 1 run function ckenja.ghook:feature/shot/hook
execute if score #flag.hooked.init ckenja.ghook matches 0 positioned ^ ^ ^0.25 if entity @s[distance=..104] run function ckenja.ghook:feature/shot/loop
