#> ckenja.ghook:player/hook/stop.init
#
#
#
# @within function ckenja.ghook:player/hook/stop

tag @s add ckenja.ghook.hook.hooked
scoreboard players set #flag.hooked.init ckenja.ghook 1
execute facing entity @s feet run function ckenja.ghook:measure/general
