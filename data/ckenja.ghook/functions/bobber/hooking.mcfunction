#> ckenja.ghook:bobber/hooking
#
#
#
# @within function ckenja.ghook:bobber/not_hooked

tag @s add ckenja.ghook.bobber.hooked
data modify entity @s Motion set value [0.0,0.0,0.0]
data modify storage ckenja.ghook.__temp__: test.bobber.Pos set from entity @s Pos
say hooking