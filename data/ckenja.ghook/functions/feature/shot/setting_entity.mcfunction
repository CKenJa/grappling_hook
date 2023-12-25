function ckenja.ghook:feature/shot/hook

scoreboard players operation #feature.shot.detect_entity.hook.x ckenja.ghook -= #feature.shot.detect_entity.creeper.x ckenja.ghook
scoreboard players operation #feature.shot.detect_entity.hook.y ckenja.ghook -= #feature.shot.detect_entity.creeper.y ckenja.ghook
scoreboard players operation #feature.shot.detect_entity.hook.z ckenja.ghook -= #feature.shot.detect_entity.creeper.z ckenja.ghook

scoreboard players operation @s ckenja.ghook.hook.x = #feature.shot.detect_entity.hook.x ckenja.ghook
scoreboard players operation @s ckenja.ghook.hook.y = #feature.shot.detect_entity.hook.y ckenja.ghook
scoreboard players operation @s ckenja.ghook.hook.z = #feature.shot.detect_entity.hook.z ckenja.ghook
