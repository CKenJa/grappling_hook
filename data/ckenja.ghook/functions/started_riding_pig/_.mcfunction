#> ckenja.ghook:started_riding_pig/_
#
#
#
# @within advancement ckenja.ghook:started_riding_pig

advancement revoke @s only ckenja.ghook:started_riding_pig
tag @s add ckenja.ghook.player.ride_pig
scoreboard players operation #temp.id ckenja.ghook = @s ckenja.ghook

tag @s add ckenja.ghook.this
execute as @e[type=pig,tag=!ckenja.ghook.pig,predicate=ckenja.ghook:passenger.player.this,distance=..6] run function ckenja.ghook:started_riding_pig/pig
tag @s remove ckenja.ghook.this
