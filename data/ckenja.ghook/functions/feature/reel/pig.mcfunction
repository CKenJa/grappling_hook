#> ckenja.ghook:feature/reel/pig
#
#
#
# @within function ckenja.ghook:feature/reel/_


data merge storage ckenja.ghook.__temp__: {pig:{merge:{Motion:[0.0,0.0,0.0]}}}
execute store result storage ckenja.ghook.__temp__: pig.merge.Motion[0] double 0.00015 run scoreboard players get @s ckenja.ghook.x
execute store result storage ckenja.ghook.__temp__: pig.merge.Motion[1] double 0.00015 run scoreboard players get @s ckenja.ghook.y
execute store result storage ckenja.ghook.__temp__: pig.merge.Motion[2] double 0.00015 run scoreboard players get @s ckenja.ghook.z
data modify entity @s Motion set from storage ckenja.ghook.__temp__: pig.merge.Motion