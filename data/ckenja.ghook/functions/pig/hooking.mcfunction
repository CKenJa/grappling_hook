#> ckenja.ghook:pig/hooking
#
#
#
# @within function ckenja.ghook:pig/hooked

execute store result score $intertia.x ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[0] 10000
execute store result score $intertia.y ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[0] 10000
execute store result score $intertia.z ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[0] 10000