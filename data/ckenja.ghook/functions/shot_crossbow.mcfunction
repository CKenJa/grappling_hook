#> ckenja.ghook:shot_crossbow
#
#
#
# @within advancement ckenja.ghook:shot_crossbow

advancement revoke @s only ckenja.ghook:shot_crossbow
tag @s add ckenja.ghook.player.shot_crossbow

#空気を装填
#わざわざ使わなくてもメインハンドとオフハンドみるだけでいい気がするめんどくさい
    data modify storage player_item_tuner: condition.if set value {tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}
    data modify storage player_item_tuner: condition.unless set value {tag:{ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}}
    data modify storage player_item_tuner: result.merge set value {tag:{ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}}
    function #player_item_tuner:merge/inventory
