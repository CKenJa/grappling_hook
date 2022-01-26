#> ckenja.ghook:pig/_
#
# @within ckenja.ghook:player/_

data modify storage ckenja.ghook.__temp__: pig.data set from entity @s
#bobberあったら移動
execute if score #bobber_hooked matches 1.. run function ckenja.ghook:pig/hooked
#なくてもキー検知を現在のmotionを減衰して足してmotion代入
execute unless score #bobber_hooked matches 1.. run function ckenja.ghook:pig/not_hooked
