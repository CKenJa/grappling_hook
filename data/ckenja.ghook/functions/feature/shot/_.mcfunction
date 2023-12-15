#> ckenja.ghook:feature/shot/_
#
#
#
# @within function ckenja.ghook:player/using_item

#フック射出
    data modify storage ckenja.ghook.__temp__: player.data.UUID set from entity @s UUID
    #0.25m単位で十分だろう
    #batの横の当たり判定が0.5だからギリ足りないのでは？
    scoreboard players set @s ckenja.ghook.l -250
    execute anchored eyes positioned ^ ^ ^ run function ckenja.ghook:feature/shot/loop

#アイテムの見た目変更
data modify storage player_item_tuner: condition.if set value {tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}
data modify storage player_item_tuner: result.merge set value {tag:{CustomModelData:126001}}
function #player_item_tuner:merge/inventory

tag @s add ckenja.ghook.feature.shot.player
execute if score #flag.hook_shot_this_tick ckenja.ghook matches 1 positioned ~ ~0.6 ~ summon item_display run function ckenja.ghook:feature/shot/vehicle
tag @s remove ckenja.ghook.feature.shot.player
