#> ckenja.ghook:bobber/not_hooked
#
#
#
# @within function ckenja.ghook:bobber/master

execute positioned as @s store success score #hooking ckenja.ghook run execute unless block ^ ^ ^1 #ckenja.ghook:no_collision
execute if score #hooking ckenja.ghook matches 1 run function ckenja.ghook:bobber/hooking
execute positioned as @s as @e[type=armor_stand,tag=ckenja.ghook.stand,distance=..4] if score @s ckenja.ghook = #temp.id ckenja.ghook run function ckenja.ghook:stand/not_hooked
