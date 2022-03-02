#> ckenja.ghook:tick/player
#
#
#
# @within function ckenja.ghook:tick/_

execute unless score @s ckenja.ghook matches -2147483648..2147483647 run function ckenja.ghook:player/id
execute if entity @s[tag=ckenja.ghook.player.ride_pig] run function ckenja.ghook:tick/player.ride_pig