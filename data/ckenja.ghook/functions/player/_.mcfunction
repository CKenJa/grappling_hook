#> ckenja.ghook:player/_
#
#
#
# @within function ckenja.ghook:tick

#初期化
execute unless score @s ckenja.ghook matches -2147483648..2147483647 run function ckenja.ghook:player/id
scoreboard players operation #temp.id ckenja.ghook = @s ckenja.ghook
data modify storage ckenja.ghook.__temp__: player set from entity @s

scoreboard players reset #have_rod
execute if data storage ckenja.ghook.__temp__: player{SelectedItem:{tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}} run function ckenja.ghook:player/have
execute unless data storage ckenja.ghook.__temp__: player{SelectedItem:{tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}} if data storage ckenja.ghook.__temp__: player{Inventory:[{Slot:-106b,tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}]} run function ckenja.ghook:player/have
#仮に持っているとする
scoreboard players set #have_rod ckenja.ghook 1

execute as @e[type=fishing_bobber,distance=..36] positioned as @s run function ckenja.ghook:bobber/_
execute as @e[type=pig,distance=..6,tag=ckenja.ghook.pig] positioned as @s if score @s ckenja.ghook = #temp.id ckenja.ghook run function ckenja.ghook:pig/_
