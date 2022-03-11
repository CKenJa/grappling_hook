#> ckenja.ghook:feature/shot
#
#
#
# @within function ckenja.ghook:player/main

#フック射出
    data modify storage ckenja.ghook.__temp__: player.data.RootVehicle.Attach set from entity @s RootVehicle.Attach
    execute anchored eyes positioned ^ ^ ^-0.4 run summon bat ~ ~-0.4 ~ {Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["ckenja.ghook.hook.init","ckenja.ghook.hook"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
    execute at @s as @e[type=bat,tag=ckenja.ghook.hook.init] positioned as @s run function ckenja.ghook:feature/shot.init

#アイテムの見た目変更
data modify storage player_item_tuner: condition.if set value {tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}
data modify storage player_item_tuner: result.merge set value {tag:{CustomModelData:126001}}
function #player_item_tuner:merge/inventory
say shot