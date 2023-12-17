#> ckenja.ghook:feature/shot/loop
#
#
#
# @within ckenja.ghook:feature/shot/**

scoreboard players add @s ckenja.ghook.l 250
execute store success score #feature.shot.loop ckenja.ghook unless block ~ ~ ~ #ckenja.ghook:no_collision
execute if score #feature.shot.loop ckenja.ghook matches 1 run function ckenja.ghook:feature/shot/success

execute if score #feature.shot.loop ckenja.ghook matches 0 positioned ^ ^ ^0.25 if entity @s[distance=..104] run function ckenja.ghook:feature/shot/loop
execute if score #flag.hook_shot_this_tick ckenja.ghook matches 1 run particle crit ~ ~ ~
