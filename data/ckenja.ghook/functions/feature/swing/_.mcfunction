#> ckenja.ghook:feature/swing/_
#
#
#
# @within function ckenja.ghook:player/tick

scoreboard players operation #temp.feature.swing.loop ckenja.ghook = @s ckenja.ghook.l

#アニメーションでずれるので移動前にパーティクルを出す
    execute positioned as @s run particle cloud ~ ~ ~

#慣性。ないならMotionを参照する
    execute if score #flag.hook_shot_this_tick ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/motion
    execute unless score #flag.hook_shot_this_tick ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/intertia.get

#追加のベクトル(重力とキー操作)
    execute store result score $player.motion.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[0] 5000
    execute store result score $player.motion.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[1] 5000
    execute store result score $player.motion.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[2] 5000

#の和
    scoreboard players operation $intertia.x ckenja.ghook += $player.motion.x ckenja.ghook
    scoreboard players operation $intertia.y ckenja.ghook += $player.motion.y ckenja.ghook
    scoreboard players operation $intertia.z ckenja.ghook += $player.motion.z ckenja.ghook

#長押ししてたらジェットのベクトルも追加
    #execute if score #flag.jet ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/jet

#現在座標
    execute store result score $player.pos.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Pos[0] 10000
    execute store result score $player.pos.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Pos[1] 10000
    execute store result score $player.pos.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Pos[2] 10000

#との和
    scoreboard players operation $intertia.x ckenja.ghook += $player.pos.x ckenja.ghook
    scoreboard players operation $intertia.y ckenja.ghook += $player.pos.y ckenja.ghook
    scoreboard players operation $intertia.z ckenja.ghook += $player.pos.z ckenja.ghook

#その座標にマーカーを出し、フックからロープ距離分マーカー方向に進んで、その場所の座標を記憶
    data modify storage ckenja.ghook.__temp__: marker.merge.Pos set value [0.0,0.0,0.0]
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get $intertia.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get $intertia.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get $intertia.z ckenja.ghook
    summon marker ~ ~ ~ {Tags:["ckenja.ghook.marker"]}
    tag @s add ckenja.ghook.feature.swing.player
    execute as @e[type=marker,tag=ckenja.ghook.marker] run function ckenja.ghook:feature/swing/marker
    tag @s remove ckenja.ghook.feature.swing.player
    
#移動できるならPos代入して次tick用の慣性作成
function ckenja.ghook:feature/swing/intertia.make
#移動できなかったら当たり判定処理
#execute unless score #flag.no_collision ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/intertia.half

#ロープが縮んだら反映
scoreboard players operation @s ckenja.ghook.l = #temp.feature.swing.updated_length ckenja.ghook
scoreboard players reset #temp.feature.swing.updated_length ckenja.ghook

