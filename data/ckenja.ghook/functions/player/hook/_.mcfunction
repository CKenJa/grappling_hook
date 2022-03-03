#> ckenja.ghook:player/hook/_
#
#
#
# @within function ckenja.ghook:player/main

execute if score @s ckj.gh.sm.Speed matches 0 run function ckenja.ghook:player/hook/stop
execute if score @s ckj.gh.sm.Speed matches 1.. run particle cloud ~ ~ ~
execute if entity @s[distance=104..] run function ckenja.ghook:player/hook/far