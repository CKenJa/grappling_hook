#> ckenja.ghook:load
#
# load
#
# @within tag/function minecraft:load

scoreboard objectives add ckenja.ghook dummy
scoreboard objectives add ckenja.ghook.x dummy
scoreboard objectives add ckenja.ghook.y dummy
scoreboard objectives add ckenja.ghook.z dummy
scoreboard objectives add ckenja.ghook.l dummy
scoreboard objectives add ckenja.ghook.pos.x dummy
scoreboard objectives add ckenja.ghook.pos.y dummy
scoreboard objectives add ckenja.ghook.pos.z dummy

scoreboard players set #98 ckenja.ghook 98
scoreboard players set #100 ckenja.ghook 100
scoreboard players set #10000 ckenja.ghook 10000
scoreboard players set #2 ckenja.ghook 2

execute in overworld run forceload add -1 -1 0 0
data modify storage ckenja.ghook.__temp__: marker.merge.Pos set value [0.0,0.0,0.0]
