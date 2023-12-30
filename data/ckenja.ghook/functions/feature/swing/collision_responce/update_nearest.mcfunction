#> ckenja.ghook:feature/swing/collision_responce/update_nearest
#
#
#
# @within function ckenja.ghook:feature/swing/collision_responce/_

scoreboard players operation #feature.swing.nearest.x ckenja.ghook = #feature.swing.intersection.x ckenja.ghook
scoreboard players operation #feature.swing.nearest.y ckenja.ghook = #feature.swing.intersection.y ckenja.ghook
scoreboard players operation #feature.swing.nearest.z ckenja.ghook = #feature.swing.intersection.z ckenja.ghook
scoreboard players operation #feature.swing.nearest.range ckenja.ghook = #feature.swing.temp.range ckenja.ghook
data modify storage ckenja.ghook.__temp__: swing.collision_responce.nearest_direction set from storage ckenja.ghook.__temp__: swing.collision_responce.direction
