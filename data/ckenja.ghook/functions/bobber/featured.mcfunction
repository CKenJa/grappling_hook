#> ckenja.ghook:bobber/featured
#
#
#
# @within function ckenja.ghook:bobber/master

execute if entity @s[tag=!ckenja.ghook.bobber.hooked] run function ckenja.ghook:bobber/not_hooked
execute if entity @s[tag=ckenja.ghook.bobber.hooked] run function ckenja.ghook:bobber/hooked
execute positioned as @s as @e[type=armor_stand,tag=ckenja.ghook.stand,distance=..4] if score @s ckenja.ghook = #temp.id ckenja.ghook run function ckenja.ghook:stand/not_hooked
