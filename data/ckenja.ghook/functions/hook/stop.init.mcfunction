#> ckenja.ghook:hook/stop.init
#
#
#
# @within function ckenja.ghook:hook/tp

tag @s add ckenja.ghook.hook.hooked
scoreboard players set #flag.hooked ckenja.ghook 1
execute facing entity @s feet run function ckenja.ghook:measure/general

say stop.init