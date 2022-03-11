#> ckenja.ghook:feature/shot.init
#
#
#
# @within function ckenja.ghook:feature/shot

data modify entity @s Leash.UUID set from storage ckenja.ghook.__temp__: player.data.UUID
scoreboard players operation @s ckenja.ghook = #temp.id ckenja.ghook
execute as @s run tp @s ~ ~ ~ ~ ~
tag @s remove ckenja.ghook.hook.init
