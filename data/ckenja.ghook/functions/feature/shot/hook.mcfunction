#> ckenja.ghook:feature/shot/hook
#
#
#
# @within function ckenja.ghook:feature/shot/loop

data merge entity @s {Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["ckenja.ghook.hook"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}]}
data modify entity @s Leash.UUID set from storage ckenja.ghook.__temp__: player.data.UUID
scoreboard players operation @s ckenja.ghook = #temp.id ckenja.ghook
execute store success score #flag.have_hook ckenja.ghook unless block ~ ~ ~ #ckenja.ghook:unable_hook
execute if score #flag.have_hook ckenja.ghook matches 0 run scoreboard players reset #flag.hook_shot_this_tick ckenja.ghook
execute if score #feature.shot.detect_entity ckenja.ghook matches 1 run function ckenja.ghook:feature/shot/get_pos
