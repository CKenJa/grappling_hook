#> ckenja.ghook:feature/shot/using_item
#
#
#
# @within function ckenja.ghook:feature/shot/success

execute align xyz positioned ~0.5 ~ ~0.5 summon bat run function ckenja.ghook:feature/shot/hook

#アイテムの見た目変更
data modify storage player_item_tuner: result.merge set value {tag:{CustomModelData:126001}}
tag @s add ckenja.ghook.feature.shot.player
execute at @s positioned ~ ~0.6 ~ summon item_display run function ckenja.ghook:feature/shot/vehicle
tag @s remove ckenja.ghook.feature.shot.player

scoreboard players set #flag.hook_shot_this_tick ckenja.ghook 1

#execute positioned as @s run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1.5
execute positioned as @s run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 1.67
execute positioned as @s run playsound minecraft:block.chain.place player @a ~ ~ ~ 0.5 0.67
