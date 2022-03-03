#> ckenja.ghook:feature/shot
#
#
#
# @within function ckenja.ghook:player/main

#フック射出
    data modify storage ckenja.ghook.__temp__: player.data.UUID set from entity @s UUID
    execute anchored eyes positioned ^ ^ ^-0.4 run summon bat ~ ~-0.4 ~ {Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["ckenja.ghook.hook.init","ckenja.ghook.hook",ckenja.ghook.SmartMotion,Stick],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
    execute rotated as @s as @e[type=bat,tag=ckenja.ghook.hook.init,distance=..1] positioned as @s run function ckenja.ghook:feature/shot.init

#長押し検知できるアイテムに変更
    data modify storage player_item_tuner: condition.if set value {id:"minecraft:carrot_on_a_stick",Slot:8b,tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}
    data modify storage player_item_tuner: result.merge set value {id:"minecraft:shield"}
    function #player_item_tuner:modify/inventory
