#> ckenja.ghook:player/ride.not
#
#
#
# @within function ckenja.ghook:player/ride

tag @s remove ckenja.ghook.player.ride_pig
execute as @e[type=pig,tag=ckenja.ghook.passenger.player,distance=..6] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:player/ride.not.pig
function ckenja.ghook:feature/reel
