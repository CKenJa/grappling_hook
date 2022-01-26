#> ckenja.ghook:bobber/featured
#
#
#
# @within function ckenja.ghook:bobber/master

execute if entity @s[tag=!ckenja.ghook.bobber.hooked] run function ckenja.ghook:bobber/not_hooked
execute if entity @s[tag=ckenja.ghook.bobber.hooked] run scoreboard players set #bobber_hooked ckenja.ghook 1