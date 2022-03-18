#> ckenja.ghook:hook/main
#
#
#
# @within function ckenja.ghook:hook/_

execute store success score #flag.hooked ckenja.ghook run execute if entity @s[tag=ckenja.ghook.hook.hooked]
execute if score #flag.hooked ckenja.ghook matches 0 run function ckenja.ghook:hook/tp
