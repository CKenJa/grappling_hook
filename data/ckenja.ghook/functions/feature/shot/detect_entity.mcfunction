scoreboard players set #feature.shot.loop ckenja.ghook 1
scoreboard players set #feature.shot.detect_entity ckenja.ghook 1

execute if score #feature.shot.using_item ckenja.ghook matches 1 run function ckenja.ghook:feature/shot/detect_entity2
