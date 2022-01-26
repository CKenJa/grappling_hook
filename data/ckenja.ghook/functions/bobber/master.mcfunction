#> ckenja.ghook:bobber/master
#
#
#
# @within function ckenja.ghook:bobber/_

execute if score #have_rod ckenja.ghook matches 1 run function ckenja.ghook:bobber/have_rod
execute if entity @s[tag=ckenja.ghook.bobber,tag=!ckenja.ghook.bobber.hooked] run function ckenja.ghook:bobber/not_hooked
execute if entity @s[tag=ckenja.ghook.bobber,tag=ckenja.ghook.bobber.hooked] run data modify entity @s Pos set from storage ckenja.ghook.__temp__: test.bobber.Pos
scoreboard players add #test ckenja.ghook 1
execute if score #test ckenja.ghook matches 2.. run scoreboard players set #test ckenja.ghook 0
execute if entity @s[tag=ckenja.ghook.bobber,tag=ckenja.ghook.bobber.hooked] if score #test ckenja.ghook matches 1 run data modify entity @s Air set value 1s
execute if entity @s[tag=ckenja.ghook.bobber,tag=ckenja.ghook.bobber.hooked] if score #test ckenja.ghook matches 0 run data modify entity @s Air set value 0s
#tp @s ~ ~ ~
#data modify entity @s Motion set value [0.0,0.0,0.0]
