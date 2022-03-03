#> ckenja.ghook:feature/move/motion
#
#
#
# @within function ckenja.ghook:feature/move/pig

data modify storage ckenja.ghook.__temp__: pig.data.Motion set from entity @s Motion
execute store result score $intertia.x ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[0] 10000
execute store result score $intertia.y ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[0] 10000
execute store result score $intertia.z ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[0] 10000