#> ckenja.ghook:player/_
#
#
#
# @within function ckenja.ghook:tick

#初期化
execute unless score @s ckenja.ghook matches -2147483648..2147483647 run function ckenja.ghook:player/id
scoreboard players operation #temp.id ckenja.ghook = @s ckenja.ghook
data modify storage ckenja.ghook.__temp__: player set from entity @s

execute if data storage ckenja.ghook.__temp__: player{SelectedItem:{tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}} run function ckenja.ghook:player/have
execute unless data storage ckenja.ghook.__temp__: player{SelectedItem:{tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}} if data storage ckenja.ghook.__temp__: player{Inventory:[{Slot:-106b,tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}]} run function ckenja.ghook:player/have
#仮に持っているとする
#scoreboard players set #have_rod ckenja.ghook 1

#スコア認証はいらない
execute as @e[type=fishing_bobber,distance=..36] run function ckenja.ghook:bobber/_
execute if predicate ckenja.ghook:onpig as @e[type=pig,tag=ckenja.ghook.pig,distance=..6,sort=nearest] if score @s ckenja.ghook = #temp.id ckenja.ghook positioned as @s run function ckenja.ghook:pig/_
#execute as @e[type=pig,tag=ckenja.ghook.pig,sort=nearest] positioned as @s run function ckenja.ghook:pig/_

#アマスタ死亡処理
execute as @e[type=armor_stand,tag=ckenja.ghook.stand,distance=..36] if score @s ckenja.ghook = #temp.id ckenja.ghook at @s unless entity @e[type=fishing_bobber,tag=ckenja.ghook.bobber] if score @s ckenja.ghook = #temp.id ckenja.ghook run kill @s

scoreboard players reset #bobber_hooked ckenja.ghook
scoreboard players reset #have_rod ckenja.ghook
scoreboard players reset #hooking ckenja.ghook
scoreboard players reset #long ckenja.ghook
scoreboard players reset #temp.long0 ckenja.ghook