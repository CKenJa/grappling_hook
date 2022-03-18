#> ckenja.ghook:hook/tp
#
#
#
# @within function ckenja.ghook:hook/main

execute store success score #flag.hooked.init ckenja.ghook run execute positioned as @s unless block ~ ~ ~ #ckenja.ghook:no_collision
execute if score #flag.hooked.init ckenja.ghook matches 0 run execute at @s run tp @s ^ ^ ^1 ~ ~
execute if score #flag.hooked.init ckenja.ghook matches 1 run function ckenja.ghook:hook/stop.init
