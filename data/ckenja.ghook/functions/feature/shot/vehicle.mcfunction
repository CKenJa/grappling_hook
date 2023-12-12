#> ckenja.ghook:feature/shot/vehicle
#
#
#
# @within function ckenja.ghook:feature/shot/_

tag @s add ckenja.ghook.vehicle
data merge entity @s {teleport_duration:1}
scoreboard players operation @s ckenja.ghook = #temp.id ckenja.ghook
execute positioned ~ ~-0.6 ~ run ride @a[tag=ckenja.ghook.feature.shot.player,distance=..1,limit=1] mount @s
