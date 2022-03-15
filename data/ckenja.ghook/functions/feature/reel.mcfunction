#> ckenja.ghook:feature/reel
#
#
#
# @within function ckenja.ghook:player/_

scoreboard players reset #flag.hook.kill ckenja.ghook
tag @s remove ckenja.ghook.player.shot_crossbow.first_exit

#フック収納
execute as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:void_kill

#慣性をMotion代入
execute if entity @s[tag=ckenja.ghook.player.ride_pig] as @e[type=pig,tag=ckenja.ghook.pig,distance=..6] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:feature/reel.pig

#アイテムの見た目変更
data modify storage player_item_tuner: condition.if set value {tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}
data modify storage player_item_tuner: result.merge set value {tag:{CustomModelData:126000}}
function #player_item_tuner:merge/inventory

say reel
