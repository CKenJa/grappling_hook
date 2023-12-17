execute if score #flag.have_hook ckenja.ghook matches 1 run scoreboard players set #flag.hook.kill ckenja.ghook 1

scoreboard players operation #displacement.x ckenja.ghook = @s ckenja.ghook.pos.x
scoreboard players operation #displacement.y ckenja.ghook = @s ckenja.ghook.pos.y
scoreboard players operation #displacement.z ckenja.ghook = @s ckenja.ghook.pos.z

scoreboard players operation #displacement.x ckenja.ghook -= #player.pos.x ckenja.ghook
scoreboard players operation #displacement.y ckenja.ghook -= #player.pos.y ckenja.ghook
scoreboard players operation #displacement.z ckenja.ghook -= #player.pos.z ckenja.ghook

execute store result storage ckenja.ghook.__temp__: player.not_vehicle.Pos.0 double 0.0001 run scoreboard players get #displacement.x ckenja.ghook
execute store result storage ckenja.ghook.__temp__: player.not_vehicle.Pos.1 double 0.0001 run scoreboard players get #displacement.y ckenja.ghook
execute store result storage ckenja.ghook.__temp__: player.not_vehicle.Pos.2 double 0.0001 run scoreboard players get #displacement.z ckenja.ghook
#function ckenja.ghook:player/not_vehicle2 with storage ckenja.ghook.__temp__: player.not_vehicle.Pos
