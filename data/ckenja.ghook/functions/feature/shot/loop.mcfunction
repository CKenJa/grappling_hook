#> ckenja.ghook:feature/shot/loop
#
#
#
# @within ckenja.ghook:feature/shot/**

scoreboard players add #feature.shot.length ckenja.ghook 250
execute store success score #feature.shot.loop ckenja.ghook unless block ~ ~ ~ #ckenja.ghook:no_collision
execute if score #feature.shot.loop ckenja.ghook matches 0 as @e[type=#ckenja.ghook:hookable_entity,dx=0,dy=0,dz=0] unless score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:feature/shot/detect_entity
execute if score #feature.shot.loop ckenja.ghook matches 1 unless block ~ ~ ~ #ckenja.ghook:unable_hook run function ckenja.ghook:feature/shot/success

execute if score #feature.shot.loop ckenja.ghook matches 0 positioned ^ ^ ^0.25 if entity @s[distance=..104] run function ckenja.ghook:feature/shot/loop
execute if score #flag.hook_shot_this_tick ckenja.ghook matches 1 run particle crit ~ ~ ~
