#> ckenja.ghook:feature/shot.init
#
#
#
# @within function ckenja.ghook:feature/shot

scoreboard players operation @s ckenja.ghook = #temp.id ckenja.ghook
scoreboard players set @s sm.Speed 200
execute as @s run function ckenja.ghook.smart_motion:core/tp
tag @s remove ckenja.ghook.hook.init