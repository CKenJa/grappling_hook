#> ckenja.ghook:bobber/master
#
#
#
# @within function ckenja.ghook:bobber/_

execute if entity @s[tag=!ckenja.ghook.bobber] if score #have_rod ckenja.ghook matches 1 positioned as @s run function ckenja.ghook:bobber/have_rod
execute if entity @s[tag=ckenja.ghook.bobber] run function ckenja.ghook:bobber/featured