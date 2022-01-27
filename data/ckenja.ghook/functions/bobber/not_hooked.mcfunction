#> ckenja.ghook:bobber/not_hooked
#
#
#
# @within function ckenja.ghook:bobber/master

execute store success score #hooking ckenja.ghook run execute positioned as @s unless block ^ ^ ^1 #ckenja.ghook:no_collision
execute if score #hooking ckenja.ghook matches 1 run function ckenja.ghook:bobber/hooking
execute as @e[type=armor_stand,tag=ckenja.ghook.stand,distance=..4] if score @s ckenja.ghook = #temp.id ckenja.ghook positioned as @s run function ckenja.ghook:stand/not_hooked
