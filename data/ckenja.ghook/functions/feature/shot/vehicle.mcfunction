#> ckenja.ghook:feature/shot/vehicle
#
#
#
# @within function ckenja.ghook:feature/shot/_

tag @s add ckenja.ghook.vehicle
data merge entity @s {teleport_duration:1,item:{id:"carved_pumpkin",tag:{CustomModelData:1},Count:1b},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]}}
scoreboard players operation @s ckenja.ghook = #temp.id ckenja.ghook
execute positioned ~ ~-0.6 ~ run ride @a[tag=ckenja.ghook.feature.shot.player,distance=..1,limit=1] mount @s
