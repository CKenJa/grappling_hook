#> ckenja.ghook:feature/shot.init
#
#
#
# @within function ckenja.ghook:feature/shot

data modify entity @s Leash.UUID set from storage ckenja.ghook.__temp__: player.data.UUID
scoreboard players operation @s ckenja.ghook = #temp.id ckenja.ghook
scoreboard players set @s ckj.gh.sm.Speed 200
execute as @s run function ckenja.ghook.smart_motion:core/tp
tag @s remove ckenja.ghook.hook.init

say shot init