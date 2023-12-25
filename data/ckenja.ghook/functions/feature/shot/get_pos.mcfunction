
scoreboard players set @s ckenja.ghook.c 1

data modify storage ckenja.ghook.__temp__: feature.shot.detect_entity.Pos set from entity @s Pos
execute store result score #feature.shot.detect_entity.hook.x ckenja.ghook run data get storage ckenja.ghook.__temp__: feature.shot.detect_entity.Pos[0] 10000
execute store result score #feature.shot.detect_entity.hook.y ckenja.ghook run data get storage ckenja.ghook.__temp__: feature.shot.detect_entity.Pos[1] 10000
execute store result score #feature.shot.detect_entity.hook.z ckenja.ghook run data get storage ckenja.ghook.__temp__: feature.shot.detect_entity.Pos[2] 10000
