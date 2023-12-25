#> ckenja.ghook:feature/shot/_
#
#
#
# @within function ckenja.ghook:player/using_item

scoreboard players set #feature.shot.on_trigger ckenja.ghook 0
scoreboard players set #feature.shot.detect_entity ckenja.ghook 0
scoreboard players set #feature.shot.using_item ckenja.ghook 0

execute if entity @s[tag=ckenja.ghook.player.using_item] if score @s ckenja.ghook.c matches 0 run scoreboard players set #feature.shot.using_item ckenja.ghook 1
#フック射出
    data modify storage ckenja.ghook.__temp__: player.data.UUID set from entity @s UUID
    #0.25m単位で十分だろう
    #batの横の当たり判定が0.5だからギリ足りないのでは？
    scoreboard players set @s ckenja.ghook.l 0
    execute anchored eyes positioned ^ ^ ^ run function ckenja.ghook:feature/shot/loop

execute if score #feature.shot.on_trigger ckenja.ghook matches 0 run function ckenja.ghook:feature/shot/on_trigger
