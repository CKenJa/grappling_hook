#> ckenja.ghook:feature/shot/on_trigger
#
#
#
# @within function ckenja.ghook:feature/shot/_

data modify storage player_item_tuner: condition.if set value {tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}
data modify storage player_item_tuner: result.merge set value {tag:{CustomModelData:126001}}
function #player_item_tuner:merge/inventory
