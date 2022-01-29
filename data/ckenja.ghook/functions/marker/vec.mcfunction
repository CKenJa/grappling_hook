#> ckenja.ghook:marker/vec
#
#
#
# @within function ckenja.ghook:pig/hooked

data modify entity @s Pos set from storage ckenja.ghook.__temp__: pig.hooked.marker.Pos
#ループでマーカーの方向に移動
tag @s add ckenja.ghook.marker.this
execute as @e[type=fishing_bobber,tag=ckenja.ghook.bobber,distance=..38] if score @s ckenja.ghook = #temp.id ckenja.ghook facing entity @s feet positioned ^ ^ ^0.25 run function ckenja.ghook:bobber/loop
tag @s remove ckenja.ghook.marker.this
data modify storage ckenja.ghook.__temp__: pig.hooked.marker.Pos set from entity @s Pos
kill @s