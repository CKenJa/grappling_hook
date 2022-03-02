#> ckenja.ghook:tick/player.ride_pig
#
# 豚に乗ってるプレイヤーに実行
#
# @within function ckenja.ghook:tick/_

#豚に乗ってねぇやついねぇよなぁああああ？
execute unless predicate ckenja.ghook:vehicle.pig run function ckenja.ghook:tick/player.not_ride_pig

#初期化
    scoreboard players operation #temp.id ckenja.ghook = @s ckenja.ghook
    data modify storage ckenja.ghook.__temp__: player set from entity @s

#グラップルを持ってるか検知
    execute if data storage ckenja.ghook.__temp__: player{SelectedItem:{tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}} run function ckenja.ghook:player/have
    execute unless data storage ckenja.ghook.__temp__: player{SelectedItem:{tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}} if data storage ckenja.ghook.__temp__: player{Inventory:[{Slot:-106b,tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}]} run function ckenja.ghook:player/have

#スコア認証はいらない
execute as @e[type=fishing_bobber,distance=..36] run function ckenja.ghook:bobber/_
execute as @e[type=pig,tag=ckenja.ghook.pig,distance=..6,sort=nearest] if score @s ckenja.ghook = #temp.id ckenja.ghook positioned as @s run function ckenja.ghook:pig/_

scoreboard players reset #have_rod ckenja.ghook
scoreboard players reset #bobber_hooked ckenja.ghook
scoreboard players reset #hooking ckenja.ghook
scoreboard players reset #long ckenja.ghook
scoreboard players reset #temp.long0 ckenja.ghook