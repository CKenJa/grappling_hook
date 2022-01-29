#> ckenja.ghook:marker/collision
#
#
#
# @within function ckenja.ghook:marker/vec

#execute unless block ~ ~0 ~0.3 #ckenja.ghook:no_collision unless block ~ ~0 ~-0.3 #ckenja.ghook:no_collision unless block ~0.3 ~0 ~ #ckenja.ghook:no_collision unless block ~-0.3 ~0 ~ #ckenja.ghook:no_collision unless block ~ ~1.8 ~0.3 #ckenja.ghook:no_collision unless block ~ ~1.8 ~-0.3 #ckenja.ghook:no_collision unless block ~0.3 ~1.8 ~ #ckenja.ghook:no_collision unless block ~-0.3 ~1.8 ~ #ckenja.ghook:no_collision run data modify storage ckenja.ghook.__temp__: pig.hooked.marker.Pos set value [0.0,0.0,0.0]
#if block ~ ~ ~ #ckenja.ghook:no_collision run 