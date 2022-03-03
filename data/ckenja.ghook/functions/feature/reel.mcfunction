#> ckenja.ghook:feature/reel
#
#
#
# @within function ckenja.ghook:player/**

#フック収納
execute as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score #temp.id ckenja.ghook = @s ckenja.ghook run kill @s

#アイテムをニンジン棒に戻す
    data modify storage player_item_tuner: condition.if set value {id:"minecraft:shield",Slot:8b,tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}
    data modify storage player_item_tuner: result.merge set value {id:"minecraft:carrot_on_a_stick"}
    function #player_item_tuner:modify/inventory

#慣性をMotion代入
execute if score #flag.hooked ckenja.ghook matches 1 as @e[type=pig,tag=ckenja.ghook.pig,distance=..6] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:feature/reel.pig
