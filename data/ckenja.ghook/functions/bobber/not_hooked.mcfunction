#> ckenja.ghook:bobber/not_hooked
#
#
#
# @within function ckenja.ghook:bobber/master

execute unless block ^ ^ ^1 #ckenja.ghook:no_collision run function ckenja.ghook:bobber/hooking
execute as @e[type=armor_stand,tag=ckenja.ghook.stand,distance=..4] if score @s ckenja.ghook = #temp.id ckenja.ghook run function ckenja.ghook:stand/not_hooked
