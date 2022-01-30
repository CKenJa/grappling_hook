#> ckenja.ghook:marker/vec
#
#
#
# @within function ckenja.ghook:pig/hooked

data modify entity @s Pos set from storage ckenja.ghook.__temp__: pig.hooked.marker.Pos
#execute positioned as @s run particle flame ~ ~ ~
#ループでマーカーの方向に移動
tag @s add ckenja.ghook.marker.this
scoreboard players operation #temp.long ckenja.ghook = #long ckenja.ghook
scoreboard players operation #temp.long.l ckenja.ghook = #long ckenja.ghook
execute positioned as @s as @e[type=fishing_bobber,tag=ckenja.ghook.bobber,distance=..38] if score @s ckenja.ghook = #temp.id ckenja.ghook facing entity @s feet positioned as @s positioned ^ ^ ^-0.25 run function ckenja.ghook:bobber/loop
data modify storage ckenja.ghook.__temp__: pig.hooked.pig.Pos set from entity @s Pos
execute positioned as @s run function ckenja.ghook:marker/collision
#execute positioned as @s run particle soul_fire_flame ~ ~ ~
tag @s remove ckenja.ghook.marker.this

scoreboard players remove #long ckenja.ghook 25
execute unless score #long ckenja.ghook matches 1.. run scoreboard players set #temp.long0 ckenja.ghook 1
execute positioned as @s unless block ~ ~ ~ #ckenja.ghook:no_collision if score #long ckenja.ghook matches 1.. run function ckenja.ghook:marker/vec 

kill @s