#> ckenja.ghook:player/main
#
#
#@within function ckenja.ghook:player/ride

#二回クリックし終わったら、フック収納して慣性をMotion代入(./player.using.exit.second
execute if entity @s[tag=ckenja.ghook.player.using_item.before] run function ckenja.ghook:player/using_item/before

#クリック検知
execute if entity @s[tag=ckenja.ghook.player.using_item] run function ckenja.ghook:player/using_item/now

#フックがあればスイング計算、なければ歩行Motion計算
    data modify storage ckenja.ghook.__temp__: player.data.Motion set from entity @s Motion
    data modify storage ckenja.ghook.__temp__: player.data.Rotation set from entity @s Rotation
    execute if score #flag.hooked ckenja.ghook matches 1 run function ckenja.ghook:feature/move/_
    execute unless score #flag.hooked ckenja.ghook matches 1 as @e[type=pig,tag=ckenja.ghook.pig,distance=..6] if score @s ckenja.ghook = #temp.id ckenja.ghook positioned as @s run function ckenja.ghook:feature/walk

#落下ダメージの無効化
execute if score #nofall_timer ckenja.ghook matches 3.. run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:28b,Amplifier:0b,Duration:2,ShowParticles:0b}]}

#リセット
    scoreboard players reset #flag.jet ckenja.ghook
    scoreboard players reset #flag.no_collision ckenja.ghook
