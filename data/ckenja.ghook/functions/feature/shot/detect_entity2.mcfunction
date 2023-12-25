tag @s add ckenja.ghook.target_entity
scoreboard players operation @s ckenja.ghook = #temp.id ckenja.ghook

data modify storage ckenja.ghook.__temp__: feature.shot.detect_entity.Pos set from entity @s Pos
execute store result score #feature.shot.detect_entity.creeper.x ckenja.ghook run data get storage ckenja.ghook.__temp__: feature.shot.detect_entity.Pos[0] 10000
execute store result score #feature.shot.detect_entity.creeper.y ckenja.ghook run data get storage ckenja.ghook.__temp__: feature.shot.detect_entity.Pos[1] 10000
execute store result score #feature.shot.detect_entity.creeper.z ckenja.ghook run data get storage ckenja.ghook.__temp__: feature.shot.detect_entity.Pos[2] 10000
