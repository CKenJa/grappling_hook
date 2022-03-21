#> ckenja.ghook:player/ride
#
# 豚に乗ってるプレイヤーに実行
#
# @within function ckenja.ghook:player/_

#id使うのでtempに
scoreboard players operation #temp.id ckenja.ghook = @s ckenja.ghook

#豚に乗ってねぇやついる？いねぇよなぁああああ!?
execute store success score #flag.vehicle.pig ckenja.ghook run execute if predicate ckenja.ghook:vehicle.pig
execute if score #flag.vehicle.pig ckenja.ghook matches 0 run function ckenja.ghook:player/ride.not
execute if score #flag.vehicle.pig ckenja.ghook matches 1 run function ckenja.ghook:player/main
scoreboard players reset #flag.vehicle.pig ckenja.ghook