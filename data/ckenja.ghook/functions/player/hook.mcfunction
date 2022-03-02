#> ckenja.ghook:player/hook
#
#
#
# @within function ckenja.ghook:player/main

execute if score @s ckj.gh.sm.Speed matches 0 run scoreboard players set #flag.hooked ckenja.ghook 1
execute if entity @s[distance=104..] run function ckenja.ghook:player/hook.far