#> ckenja.ghook:player/_
#
#
#
# @within function ckenja.ghook:tick

execute unless score @s ckenja.ghook matches -2147483648..2147483647 run function ckenja.ghook:player/id
execute if entity @s[tag=ckenja.ghook.player.ride_pig] run function ckenja.ghook:player/ride
tag @s remove ckenja.ghook.player.using_item
