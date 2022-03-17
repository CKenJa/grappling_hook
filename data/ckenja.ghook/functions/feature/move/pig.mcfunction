#> ckenja.ghook:feature/move/pig
#
#
#
# @within function ckenja.ghook:feature/move/_

#慣性。ないならMotionを参照する
    execute if score #flag.hooked.init ckenja.ghook matches 1 run function ckenja.ghook:feature/move/motion
    execute unless score #flag.hooked.init ckenja.ghook matches 1 run function ckenja.ghook:feature/move/intertia

#追加のベクトル(重力とキー操作)
    execute store result score $player.motion.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[0] 10000
    execute store result score $player.motion.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[1] 10000
    execute store result score $player.motion.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[2] 10000

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
    #tellraw @p [{"text":"x"},{"score":{"name":"$intertia.x","objective":"ckenja.ghook"}},{"text":"y"},{"score":{"name":"$intertia.y","objective":"ckenja.ghook"}},{"text":"z"},{"score":{"name":"$intertia.z","objective":"ckenja.ghook"}}]

#との和
    scoreboard players operation $intertia.x ckenja.ghook += $pig.pos.x ckenja.ghook
    scoreboard players operation $intertia.y ckenja.ghook += $pig.pos.y ckenja.ghook
    scoreboard players operation $intertia.z ckenja.ghook += $pig.pos.z ckenja.ghook

#その座標にマーカーを出し、フックからロープ距離分マーカー方向に進んで、その場所の座標を記憶
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get $intertia.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get $intertia.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get $intertia.z ckenja.ghook
    summon marker ~ ~ ~ {Tags:["ckenja.ghook.marker"]}
    execute as @e[type=marker,tag=ckenja.ghook.marker] run function ckenja.ghook:feature/move/marker

#マーカーの座標を豚に代入する(TPだと降ろされるのでPos代入)
    #data modify entity @s Pos set from storage ckenja.ghook.__temp__: pig.merge.Pos

#次tick用の慣性作成。空気抵抗として0.98倍しておく
    execute store result score @s ckenja.ghook.x run data get storage ckenja.ghook.__temp__: pig.merge.Pos[0] 10000
    execute store result score @s ckenja.ghook.y run data get storage ckenja.ghook.__temp__: pig.merge.Pos[1] 10000
    execute store result score @s ckenja.ghook.z run data get storage ckenja.ghook.__temp__: pig.merge.Pos[2] 10000
    scoreboard players operation @s ckenja.ghook.x -= $pig.pos.x ckenja.ghook
    scoreboard players operation @s ckenja.ghook.y -= $pig.pos.y ckenja.ghook
    scoreboard players operation @s ckenja.ghook.z -= $pig.pos.z ckenja.ghook
    scoreboard players operation @s ckenja.ghook.x *= #98 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.y *= #98 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.z *= #98 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.x /= #100 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.y /= #100 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.z /= #100 ckenja.ghook

#デバッグ要員
    scoreboard players operation $ghook.x ckenja.ghook = @s ckenja.ghook.x
    scoreboard players operation $ghook.y ckenja.ghook = @s ckenja.ghook.y
    scoreboard players operation $ghook.z ckenja.ghook = @s ckenja.ghook.z

execute positioned as @s run particle cloud ~ ~ ~
data modify entity @s Motion set value [0.0,0.0,0.0]
data modify entity @s Rotation set from storage ckenja.ghook.__temp__: player.data.Rotation