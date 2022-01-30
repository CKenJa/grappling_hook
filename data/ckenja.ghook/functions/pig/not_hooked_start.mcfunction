#> ckenja.ghook:pig/not_hooked_start
#
#
#
# @within function ckenja.ghook:pig/not_hooked

    execute store result storage ckenja.ghook.__temp__: pig.not_hooked[0] double 0.0001 run scoreboard players get @s ckenja.ghook.x
    execute store result storage ckenja.ghook.__temp__: pig.not_hooked[1] double 0.0001 run scoreboard players get @s ckenja.ghook.y
    execute store result storage ckenja.ghook.__temp__: pig.not_hooked[2] double 0.0001 run scoreboard players get @s ckenja.ghook.z
    tag @s remove ckenja.ghook.pig.hookednow