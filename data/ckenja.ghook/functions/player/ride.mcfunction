#> ckenja.ghook:player/ride
#
# 豚に乗ってるプレイヤーに実行
#
# @within function ckenja.ghook:player/_

#id使うのでtempに
scoreboard players operation #temp.id ckenja.ghook = @s ckenja.ghook

#豚に乗ってねぇやついる？
execute unless predicate ckenja.ghook:vehicle.pig run function ckenja.ghook:player/ride.not

#いねぇよなぁああああ!
function ckenja.ghook:player/main