#> ckenja.ghook:bobber/hooking
#
#
#
# @within function ckenja.ghook:bobber/not_hooked

tag @s add ckenja.ghook.bobber.hooked
#scoreboard players set #temp.id ckenja.ghook

#二分探索で距離を測ろう
execute facing entity @s eyes run function ckenja.ghook:measure/general
#保存しよう
scoreboard players operation @s ckenja.ghook.l = #measure ckenja.ghook
