#> ckenja.ghook:bobber/have_rod
#
#
#
# @within function ckenja.ghook:bobber/master

tag @s add ckenja.ghook.bobber
data modify entity @s NoGravity set value true
#この辺の数字は謎。必要があるかも不明
execute positioned ~ ~-0.9875 ~ run summon armor_stand ^ ^-0.5 ^ {NoGravity:true,Small:true,Tags:["ckenja.ghook.stand","ckenja.ghook.stand.init"],Invisible:true}
execute as @e[type=armor_stand,tag=ckenja.ghook.stand.init,distance=..4] run function ckenja.ghook:stand/init