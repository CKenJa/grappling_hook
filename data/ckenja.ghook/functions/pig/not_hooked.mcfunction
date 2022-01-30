#> ckenja.ghook:pig/not_hooked
#
#
#
# @within function ckenja.ghook:pig/_
execute store result score #temp.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.Motion[0] 80000
execute store result score #temp.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.Motion[1] 0
execute store result score #temp.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.Motion[2] 80000
execute store result score #temp.x.motion ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[0] 9800
execute store result score #temp.y.motion ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[1] 9800
execute store result score #temp.z.motion ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Motion[2] 9800
scoreboard players operation #temp.x ckenja.ghook += #temp.x.motion ckenja.ghook
scoreboard players operation #temp.y ckenja.ghook += #temp.y.motion ckenja.ghook
scoreboard players operation #temp.z ckenja.ghook += #temp.z.motion ckenja.ghook

data merge storage ckenja.ghook.__temp__: {pig:{not_hooked:[0.0,0.0,0.0]}}
execute store result storage ckenja.ghook.__temp__: pig.not_hooked[0] double 0.0001 run scoreboard players get #temp.x ckenja.ghook
execute store result storage ckenja.ghook.__temp__: pig.not_hooked[1] double 0.0001 run scoreboard players get #temp.y ckenja.ghook
execute store result storage ckenja.ghook.__temp__: pig.not_hooked[2] double 0.0001 run scoreboard players get #temp.z ckenja.ghook

#終了直後なら
    execute if entity @s[tag=ckenja.ghook.pig.hookednow] run function ckenja.ghook:pig/not_hooked_start

data modify entity @s Motion set from storage ckenja.ghook.__temp__: pig.not_hooked