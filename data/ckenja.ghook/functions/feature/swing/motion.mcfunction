#> ckenja.ghook:feature/swing/motion
#
#
#
# @within function ckenja.ghook:feature/swing/_

execute store result score #intertia.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[0] 10000
execute store result score #intertia.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[1] 10000
execute store result score #intertia.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[2] 10000
