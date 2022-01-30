#> ckenja.ghook:summon
#
#
#
# @user

summon pig ~ ~1 ~ {Invulnerable:1b,Age:-2000000000,Saddle:1b,Tags:["ckenja.ghook.pig.init","ckenja.ghook.pig"],DeathLootTable:"minecraft:empty",Attributes:[{Name:"generic.movement_speed",Base:0}]}
scoreboard players operation @e[type=pig,tag=ckenja.ghook.pig.init] ckenja.ghook = @p ckenja.ghook
tag @e[type=pig,tag=ckenja.ghook.pig.init] remove ckenja.ghook.pig.init