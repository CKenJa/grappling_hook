#> ckenja.ghook:feature/shot/loop
#
#
#
# @within ckenja.ghook:feature/shot/**

scoreboard players add @s ckenja.ghook.l 250
execute store success score #flag.hook_shot_this_tick ckenja.ghook unless block ~ ~ ~ #ckenja.ghook:no_collision
execute if score #flag.hook_shot_this_tick ckenja.ghook matches 1 align xyz positioned ~0.5 ~ ~0.5 summon bat run function ckenja.ghook:feature/shot/hook

execute if score #flag.hook_shot_this_tick ckenja.ghook matches 0 positioned ^ ^ ^0.25 if entity @s[distance=..104] run function ckenja.ghook:feature/shot/loop
