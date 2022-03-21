#> ckenja.ghook:feature/shot/hook
#
#
#
# @within function ckenja.ghook:feature/shot/loop

execute as @s run tp @s ~ ~ ~ ~ ~
execute store success score #flag.hooked ckenja.ghook run execute unless block ~ ~ ~ #ckenja.ghook:unable_hook
execute if score #flag.hooked ckenja.ghook matches 0 run scoreboard players reset #flag.hooked.init ckenja.ghook
