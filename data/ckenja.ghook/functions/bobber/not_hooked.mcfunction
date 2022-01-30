#> ckenja.ghook:bobber/not_hooked
#
#
#
# @within function ckenja.ghook:bobber/master

execute positioned as @s store success score #hooking ckenja.ghook run execute unless block ^ ^ ^1 #ckenja.ghook:no_collision
execute if score #hooking ckenja.ghook matches 1 run function ckenja.ghook:bobber/hooking
