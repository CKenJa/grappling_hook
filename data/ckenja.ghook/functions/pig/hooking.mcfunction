#> ckenja.ghook:pig/hooking
#
#
#
# @within function ckenja.ghook:pig/hooked

execute store result score @s ckenja.ghook.x run data get storage ckenja.ghook.__temp__: pig.data.Motion[0]
execute store result score @s ckenja.ghook.y run data get storage ckenja.ghook.__temp__: pig.data.Motion[0]
execute store result score @s ckenja.ghook.z run data get storage ckenja.ghook.__temp__: pig.data.Motion[0]