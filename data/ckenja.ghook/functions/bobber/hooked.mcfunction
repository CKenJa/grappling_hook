#> ckenja.ghook:bobber/hooked
#
#
#
# @within function ckenja.ghook:bobber/featured

scoreboard players set #bobber_hooked ckenja.ghook 1
scoreboard players operation #long ckenja.ghook = @s ckenja.ghook.l
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get @s ckenja.ghook.x
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @s ckenja.ghook.y
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get @s ckenja.ghook.z