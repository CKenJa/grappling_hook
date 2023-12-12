#> ckenja.ghook:feature/swing/intertia.make
#
#
#
# @within function ckenja.ghook:feature/swing/_

data modify storage ckenja.ghook.__temp__: player.feature.swing.Pos set from entity @s Pos
execute store result score @s ckenja.ghook.x run data get storage ckenja.ghook.__temp__: player.feature.swing.Pos[0] 10000
execute store result score @s ckenja.ghook.y run data get storage ckenja.ghook.__temp__: player.feature.swing.Pos[1] 10000
execute store result score @s ckenja.ghook.z run data get storage ckenja.ghook.__temp__: player.feature.swing.Pos[2] 10000
scoreboard players operation @s ckenja.ghook.x -= $player.pos.x ckenja.ghook
scoreboard players operation @s ckenja.ghook.y -= $player.pos.y ckenja.ghook
scoreboard players operation @s ckenja.ghook.z -= $player.pos.z ckenja.ghook
