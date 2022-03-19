#> ckenja.ghook:feature/shot/hook
#
#
#
# @within function ckenja.ghook:feature/shot/loop

execute as @s run tp @s ~ ~ ~ ~ ~
execute store success score #temp.hooked ckenja.ghook run execute unless block ~ ~ ~ #ckenja.ghook:unable_hook
execute if score #temp.hooked ckenja.ghook matches 0 run function ckenja.ghook:feature/shot/hook.unable
