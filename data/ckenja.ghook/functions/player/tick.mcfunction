#> ckenja.ghook:player/_
#
# プレイヤー全てに毎tick実行
#
# @within function ckenja.ghook:tick

data modify storage ckenja.ghook.__temp__: player.data.Pos set from entity @s Pos
execute store result score #player.pos.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Pos[0] 10000
execute store result score #player.pos.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Pos[1] 10000
execute store result score #player.pos.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Pos[2] 10000
scoreboard players operation #temp.id ckenja.ghook = @s ckenja.ghook
execute if score @s ckenja.ghook.c matches 1.. run scoreboard players remove @s ckenja.ghook.c 1

#落下ダメージの無効化
execute if score #nofall_timer ckenja.ghook matches 3.. run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"minecraft:slow_falling",amplifier:0b,duration:2,show_particles:0b}]}

#座標をロープ長検知に使うのでatはつけない
execute as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:hook/tick

#二回クリックし終わったら、flag.hook.killを立てる。あとでフック収納して慣性をMotion代入
execute if entity @s[tag=ckenja.ghook.player.using_item.before,tag=!ckenja.ghook.player.using_item] run function ckenja.ghook:player/check_quit_using

execute unless predicate ckenja.ghook:vehicle run function ckenja.ghook:player/not_vehicle

#フック射出試行
function ckenja.ghook:feature/shot/_

#クリック検知
execute if entity @s[tag=ckenja.ghook.player.using_item] run function ckenja.ghook:player/using_item

execute if score #flag.hook.kill ckenja.ghook matches 1 run function ckenja.ghook:feature/reel/_

#フックがあればスイング計算
execute if score #flag.have_hook ckenja.ghook matches 1 at @s run function ckenja.ghook:feature/swing/_

scoreboard players operation @s ckenja.ghook.pos.x = #player.pos.x ckenja.ghook
scoreboard players operation @s ckenja.ghook.pos.y = #player.pos.y ckenja.ghook
scoreboard players operation @s ckenja.ghook.pos.z = #player.pos.z ckenja.ghook

#リセット
    tag @s remove ckenja.ghook.player.using_item
    scoreboard players reset #flag.hook_shot_this_tick ckenja.ghook
    scoreboard players reset #flag.have_hook ckenja.ghook
    scoreboard players reset #flag.hook.kill ckenja.ghook
