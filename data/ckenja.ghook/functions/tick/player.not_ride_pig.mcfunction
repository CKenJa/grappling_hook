#> ckenja.ghook:tick/player.not_ride_pig
#
#
#
# @within function ckenja.ghook:tick/player.ride_pig

tag @s remove ckenja.ghook.player.ride_pig
#execute as @e[type=pig,tag=ckenja.ghook.passenger.player,distance=..6] unless predicate ckenja.ghook:passenger.player run tag @s remove ckenja.ghook.passenger.player
execute as @e[type=pig,tag=ckenja.ghook.passenger.player,distance=..6,sort=nearest,limit=1] run function ckenja.ghook:tick/pig.not_ride_pig