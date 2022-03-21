#> ckenja.ghook:started_riding_pig/pig
#
#
#
# @within function ckenja.ghook:started_riding_pig/_

tag @s add ckenja.ghook.pig
scoreboard players operation @s ckenja.ghook = #temp.id ckenja.ghook

#無敵化
    execute store success score #temp.invulnerable ckenja.ghook run execute if data entity @s {Invulnerable:true}
    execute if score #temp.invulnerable ckenja.ghook matches 1 run tag @s add ckenja.ghook.pig.invulnerable
    execute if score #temp.invulnerable ckenja.ghook matches 0 run data merge entity @s {Invulnerable:true}
    scoreboard players reset #temp.invulnerable ckenja.ghook
