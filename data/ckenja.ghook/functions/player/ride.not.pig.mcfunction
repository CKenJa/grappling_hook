#> ckenja.ghook:player/ride.not.pig
#
#
#
# @within function ckenja.ghook:player/ride.no

tag @s remove ckenja.ghook.pig
scoreboard players reset @s ckenja.ghook

#無敵化
    execute store success score #temp.invulnerable ckenja.ghook run execute if entity @s[tag=ckenja.ghook.pig.invulnerable]
    execute if score #temp.invulnerable ckenja.ghook matches 1 run tag @s remove ckenja.ghook.pig.invulnerable
    execute if score #temp.invulnerable ckenja.ghook matches 0 run data merge entity @s {Invulnerable:false}
    scoreboard players reset #temp.invulnerable ckenja.ghook