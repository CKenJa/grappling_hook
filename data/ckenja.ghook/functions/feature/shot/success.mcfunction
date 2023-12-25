#> ckenja.ghook:feature/shot/success
#
#
#
# @within function ckenja.ghook:feature/shot/loop

execute if score #feature.shot.using_item ckenja.ghook matches 1 run function ckenja.ghook:feature/shot/using_item
data modify storage player_item_tuner: result.merge set value {tag:{CustomModelData:126000}}

scoreboard players set #feature.shot.on_trigger ckenja.ghook 1
