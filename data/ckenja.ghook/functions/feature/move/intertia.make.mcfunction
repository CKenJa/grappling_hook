#> ckenja.ghook:feature/move/intertia.make
#
#
#
# @within function ckenja.ghook:feature/move/pig

data modify entity @s Pos set from storage ckenja.ghook.__temp__: pig.merge.Pos
execute store result score @s ckenja.ghook.x run data get storage ckenja.ghook.__temp__: pig.merge.Pos[0] 10000
execute store result score @s ckenja.ghook.y run data get storage ckenja.ghook.__temp__: pig.merge.Pos[1] 10000
execute store result score @s ckenja.ghook.z run data get storage ckenja.ghook.__temp__: pig.merge.Pos[2] 10000
scoreboard players operation @s ckenja.ghook.x -= $pig.pos.x ckenja.ghook
scoreboard players operation @s ckenja.ghook.y -= $pig.pos.y ckenja.ghook
scoreboard players operation @s ckenja.ghook.z -= $pig.pos.z ckenja.ghook