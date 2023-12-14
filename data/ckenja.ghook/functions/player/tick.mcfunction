#> ckenja.ghook:player/_
#
# プレイヤー全てに毎tick実行
#
# @within function ckenja.ghook:tick

execute unless score @s ckenja.ghook matches -2147483648..2147483647 run function ckenja.ghook:player/id
scoreboard players operation #temp.id ckenja.ghook = @s ckenja.ghook

#落下ダメージの無効化
execute if score #nofall_timer ckenja.ghook matches 3.. run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:28,Amplifier:0b,Duration:2,ShowParticles:0b}]}

#座標をロープ長検知に使うのでatはつけない
execute as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:hook/tick

#二回クリックし終わったら、flag.hook.killを立てる。あとでフック収納して慣性をMotion代入
execute if entity @s[tag=ckenja.ghook.player.using_item.before,tag=!ckenja.ghook.player.using_item] run function ckenja.ghook:player/check_quit_using

execute if score #flag.have_hook ckenja.ghook matches 1 unless predicate ckenja.ghook:vehicle run scoreboard players set #flag.hook.kill ckenja.ghook 1

#クリック検知
execute if entity @s[tag=ckenja.ghook.player.using_item] run function ckenja.ghook:player/using_item

execute if score #flag.hook.kill ckenja.ghook matches 1 run function ckenja.ghook:feature/reel

#フックがあればスイング計算
    data modify storage ckenja.ghook.__temp__: player.data.Pos set from entity @s Pos
    data modify storage ckenja.ghook.__temp__: player.data.Motion set from entity @s Motion
    data modify storage ckenja.ghook.__temp__: player.data.Rotation set from entity @s Rotation
    execute if score #flag.have_hook ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/_

#リセット
    tag @s remove ckenja.ghook.player.using_item
    scoreboard players reset #flag.hook_shot_this_tick ckenja.ghook
    scoreboard players reset #flag.have_hook ckenja.ghook
    scoreboard players reset #flag.jet ckenja.ghook
    scoreboard players reset #flag.hook.kill ckenja.ghook

