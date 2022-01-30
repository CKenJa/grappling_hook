#> ckenja.ghook:pig/not_hooked_start
#
#
#
# @within function ckenja.ghook:pig/not_hooked

    execute store result storage ckenja.ghook.__temp__: pig.not_hooked[0] double 0.00001 run scoreboard players get $intertia.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: pig.not_hooked[1] double 0.00001 run scoreboard players get $intertia.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: pig.not_hooked[2] double 0.00001 run scoreboard players get $intertia.z ckenja.ghook
    tag @s remove ckenja.ghook.pig.hookednow