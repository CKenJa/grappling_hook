#> ckenja.ghook:feature/move/pig
#
#
#
# @within function ckenja.ghook:feature/move/_

#アニメーションでずれるので移動前にパーティクルを出す
    execute positioned as @s run particle cloud ~ ~ ~

#慣性。ないならMotionを参照する
    execute if score #flag.hooked.init ckenja.ghook matches 1 run function ckenja.ghook:feature/move/motion
    execute unless score #flag.hooked.init ckenja.ghook matches 1 run function ckenja.ghook:feature/move/intertia.get

#追加のベクトル(重力とキー操作)
    execute store result score $player.motion.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[0] 5000
    execute store result score $player.motion.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[1] 5000
    execute store result score $player.motion.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[2] 5000

#の和
    scoreboard players operation $intertia.x ckenja.ghook += $player.motion.x ckenja.ghook
    scoreboard players operation $intertia.y ckenja.ghook += $player.motion.y ckenja.ghook
    scoreboard players operation $intertia.z ckenja.ghook += $player.motion.z ckenja.ghook

#長押ししてたらジェットのベクトルも追加
    execute if score #flag.jet ckenja.ghook matches 1 run function ckenja.ghook:feature/move/jet

#現在座標
    data modify storage ckenja.ghook.__temp__: pig.data.Pos set from entity @s Pos
    execute store result score $pig.pos.x ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Pos[0] 10000
    execute store result score $pig.pos.y ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Pos[1] 10000
    execute store result score $pig.pos.z ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Pos[2] 10000

#との和
    scoreboard players operation $intertia.x ckenja.ghook += $pig.pos.x ckenja.ghook
    scoreboard players operation $intertia.y ckenja.ghook += $pig.pos.y ckenja.ghook
    scoreboard players operation $intertia.z ckenja.ghook += $pig.pos.z ckenja.ghook

#その座標にマーカーを出し、フックからロープ距離分マーカー方向に進んで、その場所の座標を記憶
    data modify storage ckenja.ghook.__temp__: marker.merge.Pos set value [0.0,0.0,0.0]
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get $intertia.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get $intertia.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get $intertia.z ckenja.ghook
    summon marker ~ ~ ~ {Tags:["ckenja.ghook.marker"]}
    execute as @e[type=marker,tag=ckenja.ghook.marker] run function ckenja.ghook:feature/move/marker

#移動できるならPos代入して次tick用の慣性作成
execute if score #flag.no_collision ckenja.ghook matches 1 run function ckenja.ghook:feature/move/intertia.make
#移動できなかったら慣性を半分にして二分探索的なアプローチで次tickに移動を託す
execute unless score #flag.no_collision ckenja.ghook matches 1 run function ckenja.ghook:feature/move/intertia.half

data modify entity @s Motion set value [0.0,0.0,0.0]
data modify entity @s Rotation set from storage ckenja.ghook.__temp__: player.data.Rotation
