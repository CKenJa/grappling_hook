#> ckenja.ghook:feature/shot/_
#
#
#
# @within function ckenja.ghook:player/tick

scoreboard players set #feature.shot.detect_entity ckenja.ghook 0
scoreboard players set #feature.shot.using_item ckenja.ghook 0

execute unless score #flag.have_hook ckenja.ghook matches 1 if entity @s[tag=ckenja.ghook.player.using_item] if score @s ckenja.ghook.c matches 0 run scoreboard players set #feature.shot.using_item ckenja.ghook 1
#フック射出
    data modify storage ckenja.ghook.__temp__: player.data.UUID set from entity @s UUID
    #0.25m単位で十分だろう
    #batの横の当たり判定が0.5だからギリ足りないのでは？
    scoreboard players set #feature.shot.length ckenja.ghook 0
    data modify storage player_item_tuner: result.merge set value {tag:{CustomModelData:126001}}
    execute anchored eyes positioned ^ ^ ^ run function ckenja.ghook:feature/shot/loop
    data modify storage player_item_tuner: condition.if set value {tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}

function #player_item_tuner:merge/inventory
