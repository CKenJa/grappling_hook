#> ckenja.ghook:feature/shot/hook
#
#
#
# @within function ckenja.ghook:feature/shot/loop

data merge entity @s {Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["ckenja.ghook.hook"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
data modify entity @s Leash.UUID set from storage ckenja.ghook.__temp__: player.data.UUID
scoreboard players operation @s ckenja.ghook = #temp.id ckenja.ghook
execute store success score #flag.have_hook ckenja.ghook run execute unless block ~ ~ ~ #ckenja.ghook:unable_hook
execute if score #flag.have_hook ckenja.ghook matches 0 run scoreboard players reset #flag.hook_shot_this_tick ckenja.ghook
