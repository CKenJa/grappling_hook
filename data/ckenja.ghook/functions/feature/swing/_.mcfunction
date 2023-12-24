#> ckenja.ghook:feature/swing/_
#
#
#
# @within function ckenja.ghook:player/tick

scoreboard players operation #temp.feature.swing.loop ckenja.ghook = @s ckenja.ghook.l
data modify storage ckenja.ghook.__temp__: player.data.Motion set from entity @s Motion

#アニメーションでずれるので移動前にパーティクルを出す
    execute at @s rotated ~ 0 run particle cloud ^ ^0.6 ^-0.125

#慣性。ないならMotionを参照する
    execute if score #flag.hook_shot_this_tick ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/motion
    execute unless score #flag.hook_shot_this_tick ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/intertia.get

#追加のベクトル(重力とキー操作)
    execute store result score #player.motion.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[0] 10000
    execute store result score #player.motion.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[1] 10000
    execute store result score #player.motion.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[2] 10000

#の和
    scoreboard players operation #intertia.x ckenja.ghook += #player.motion.x ckenja.ghook
    scoreboard players operation #intertia.y ckenja.ghook += #player.motion.y ckenja.ghook
    scoreboard players operation #intertia.z ckenja.ghook += #player.motion.z ckenja.ghook

#との和
    scoreboard players operation #intertia.x ckenja.ghook += #player.pos.x ckenja.ghook
    scoreboard players operation #intertia.y ckenja.ghook += #player.pos.y ckenja.ghook
    scoreboard players operation #intertia.z ckenja.ghook += #player.pos.z ckenja.ghook

#その座標にマーカーを出し、フックからロープ距離分マーカー方向に進んで、その場所の座標を記憶
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #intertia.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #intertia.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #intertia.z ckenja.ghook
    tag @s add ckenja.ghook.feature.swing.player
    execute summon marker run function ckenja.ghook:feature/swing/marker
    tag @s remove ckenja.ghook.feature.swing.player
    
#移動できるならPos代入して次tick用の慣性作成
data modify storage ckenja.ghook.__temp__: player.feature.swing.Pos set from entity @s Pos
execute store result score @s ckenja.ghook.x run data get storage ckenja.ghook.__temp__: player.feature.swing.Pos[0] 10000
execute store result score @s ckenja.ghook.y run data get storage ckenja.ghook.__temp__: player.feature.swing.Pos[1] 10000
execute store result score @s ckenja.ghook.z run data get storage ckenja.ghook.__temp__: player.feature.swing.Pos[2] 10000
scoreboard players operation @s ckenja.ghook.x -= #player.pos.x ckenja.ghook
scoreboard players operation @s ckenja.ghook.y -= #player.pos.y ckenja.ghook
scoreboard players operation @s ckenja.ghook.z -= #player.pos.z ckenja.ghook
#移動できなかったら当たり判定処理
#execute unless score #flag.no_collision ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/intertia.half

#ロープが縮んだら反映
scoreboard players operation @s ckenja.ghook.l = #temp.feature.swing.updated_length ckenja.ghook
scoreboard players reset #temp.feature.swing.updated_length ckenja.ghook

execute rotated as @s on vehicle positioned as @s run tp @s ~ ~ ~ ~ 0
execute positioned as @s run playsound minecraft:block.chain.place player @a ~ ~ ~ 0.125 1
