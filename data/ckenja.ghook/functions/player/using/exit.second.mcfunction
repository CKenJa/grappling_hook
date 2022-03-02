#> ckenja.ghook:player/using/exit.second
#
#
#
# @within function ckenja.ghook:player/using.exit

tag @s remove ckenja.ghook.player.using_item.first_exit
#フック収納
function ckenja.ghook:feature/reel

#慣性をMotion代入
    data merge storage ckenja.ghook.__temp__: {pig:{merge:{Motion:[0.0,0.0,0.0]}}}
    execute store result storage ckenja.ghook.__temp__: pig.merge.Motion[0] double 0.0001 run scoreboard players get @s ckenja.ghook.x
    execute store result storage ckenja.ghook.__temp__: pig.merge.Motion[1] double 0.0001 run scoreboard players get @s ckenja.ghook.y
    execute store result storage ckenja.ghook.__temp__: pig.merge.Motion[2] double 0.0001 run scoreboard players get @s ckenja.ghook.z
    execute as @e[type=pig,tag=ckenja.ghook.pig,distance=..6] if score #temp.id ckenja.ghook = @s ckenja.ghook run data modify entity @s Motion set from storage ckenja.ghook.__temp__: pig.merge.Motion
    scoreboard players reset @s ckenja.ghook.x
    scoreboard players reset @s ckenja.ghook.y
    scoreboard players reset @s ckenja.ghook.z
