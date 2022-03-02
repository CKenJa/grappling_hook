#> ckenja.ghook:pig/_
#
# @within ckenja.ghook:player/_

data modify storage ckenja.ghook.__temp__: pig.data set from entity @s
#bobberあったら移動
execute if score #flag.hooked ckenja.ghook matches 1.. run function ckenja.ghook:pig/hooked
data modify entity @s Rotation set from storage ckenja.ghook.__temp__: player.data.Rotation
