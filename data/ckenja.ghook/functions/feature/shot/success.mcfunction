#> ckenja.ghook:feature/shot/success
#
#
#
# @within function ckenja.ghook:feature/shot/loop

execute if score #feature.shot.using_item ckenja.ghook matches 1 run function ckenja.ghook:feature/shot/using_item
execute unless entity @s[tag=ckenja.ghook.player.using_item] run data modify storage player_item_tuner: result.merge set value {tag:{CustomModelData:126000}}
execute unless score @s ckenja.ghook.c matches 0 run data modify storage player_item_tuner: result.merge set value {tag:{CustomModelData:126000}}

data modify storage player_item_tuner: condition.if set value {tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}
function #player_item_tuner:merge/inventory

scoreboard players set #feature.shot.on_trigger ckenja.ghook 1
