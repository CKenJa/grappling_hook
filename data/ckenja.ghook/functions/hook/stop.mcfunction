#> ckenja.ghook:hook/stop
#
#
#
# @within function ckenja.ghook:hook/_

scoreboard players set #flag.hooked ckenja.ghook 1
execute if entity @s[tag=!ckenja.ghook.hook.hooked] run function ckenja.ghook:hook/stop.init
