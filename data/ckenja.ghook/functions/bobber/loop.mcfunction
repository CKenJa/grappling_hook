#> ckenja.ghook:bobber/loop
#
#
#
# @within function ckenja.ghook:marker/vec
scoreboard players remove #long ckenja.ghook 25
execute unless score #long ckenja.ghook matches 1.. run tp @e[type=marker,tag=ckenja.ghook.marker.this,distance=..38] ~ ~ ~
execute if score #long ckenja.ghook matches 1.. positioned ^ ^ ^0.25 run function ckenja.ghook:bobber/loop
