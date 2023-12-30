#> ckenja.ghook:feature/swing/collision_responce/_2
#
#
#
# @within function ckenja.ghook:feature/swing/collision_responce/_

    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #feature.swing.nearest.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #feature.swing.nearest.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #feature.swing.nearest.z ckenja.ghook
    data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos
    execute at @s run function ckenja.ghook:feature/swing/collision_responce/_3
