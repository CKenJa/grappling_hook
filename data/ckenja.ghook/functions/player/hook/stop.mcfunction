#> ckenja.ghook:player/hook/stop
#
#
#
# @within function ckenja.ghook:player/hook/_

scoreboard players set #flag.hooked ckenja.ghook 1
execute if entity @s[tag=!ckenja.ghook.hook.hooked] run function ckenja.ghook:player/hook/stop.init
