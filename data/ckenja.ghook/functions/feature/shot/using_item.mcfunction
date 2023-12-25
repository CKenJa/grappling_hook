#> ckenja.ghook:feature/shot/using_item
#
#
#
# @within function ckenja.ghook:feature/shot/success

execute if score #feature.shot.detect_entity ckenja.ghook matches 0 align xyz positioned ~0.5 ~ ~0.5 summon bat run function ckenja.ghook:feature/shot/hook
execute if score #feature.shot.detect_entity ckenja.ghook matches 1 summon bat run function ckenja.ghook:feature/shot/setting_entity

#アイテムの見た目変更
data modify storage player_item_tuner: result.merge set value {tag:{CustomModelData:126001}}
tag @s add ckenja.ghook.feature.shot.player
execute at @s positioned ~ ~0.6 ~ summon item_display run function ckenja.ghook:feature/shot/vehicle
tag @s remove ckenja.ghook.feature.shot.player

scoreboard players set #flag.hook_shot_this_tick ckenja.ghook 1

execute positioned as @s run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 0.75 1.5
execute positioned as @s run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.5 1.33
execute positioned as @s run playsound minecraft:block.chain.place player @a ~ ~ ~ 0.25 0.67

scoreboard players set @s ckenja.ghook.c 5
