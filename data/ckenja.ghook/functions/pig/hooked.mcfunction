#> ckenja.ghook:pig/hooked
#
#
#
# @within function ckenja.ghook:pig/_

#前回のベクトル*0.98。ないならMotionを参照する
execute if score #hooking ckenja.ghook matches 1 run function ckenja.ghook:pig/hooking
execute if score #hooking ckenja.ghook matches 0 run function ckenja.ghook:pig/not_hooking
#追加のベクトル(重力とキー操作)
#    execute store result score $player.motion.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.Motion[0] 20000
#    execute store result score $player.motion.y ckenja.ghook run data get storage ckenja.ghook.__temp__: player.Motion[1] 10000
#    execute store result score $player.motion.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.Motion[2] 20000
#の和
#    scoreboard players operation #inertia.x ckenja.ghook += $player.motion.x ckenja.ghook
#    scoreboard players operation #inertia.y ckenja.ghook += $player.motion.y ckenja.ghook
#    scoreboard players operation #inertia.z ckenja.ghook += $player.motion.z ckenja.ghook
#現在座標
    execute store result score $pig.pos.x ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Pos[0] 10000
    execute store result score $pig.pos.y ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Pos[1] 10000
    execute store result score $pig.pos.z ckenja.ghook run data get storage ckenja.ghook.__temp__: pig.data.Pos[2] 10000
#との和
    scoreboard players operation #inertia.x ckenja.ghook += $pig.pos.x ckenja.ghook
    scoreboard players operation #inertia.y ckenja.ghook += $pig.pos.y ckenja.ghook
    scoreboard players operation #inertia.z ckenja.ghook += $pig.pos.z ckenja.ghook
#その座標にマーカーを出し、フックから紐長分マーカー方向に進んで、その場所にTP
    execute store result storage ckenja.ghook.__temp__: pig.hooked.marker.Pos[0] double 0.0001 run scoreboard players get #inertia.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: pig.hooked.marker.Pos[1] double 0.0001 run scoreboard players get #inertia.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: pig.hooked.marker.Pos[2] double 0.0001 run scoreboard players get #inertia.z ckenja.ghook

    summon marker ~ ~ ~ {Tags:["ckenja.ghook.marker"]}
    execute as @e[type=marker,tag=ckenja.ghook.marker] run function ckenja.ghook:marker/vec

#マーカーの座標を豚に代入する(TPだと乗れない)
    data modify entity @s Pos set from storage ckenja.ghook.__temp__: pig.hooked.marker.Pos

#次tick用のMotion作成
    execute store result score @s ckenja.ghook.x run data get storage ckenja.ghook.__temp__: pig.hooked.marker.Pos[0] 10000
    execute store result score @s ckenja.ghook.y run data get storage ckenja.ghook.__temp__: pig.hooked.marker.Pos[1] 10000
    execute store result score @s ckenja.ghook.z run data get storage ckenja.ghook.__temp__: pig.hooked.marker.Pos[2] 10000
    scoreboard players operation @s ckenja.ghook.x -= $pig.pos.x ckenja.ghook
    scoreboard players operation @s ckenja.ghook.y -= $pig.pos.y ckenja.ghook
    scoreboard players operation @s ckenja.ghook.z -= $pig.pos.z ckenja.ghook
    scoreboard players set #98 ckenja.ghook 98
        scoreboard players set #100 ckenja.ghook 100
    scoreboard players operation @s ckenja.ghook.x *= #98 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.y *= #98 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.z *= #98 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.x /= #100 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.y /= #100 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.z /= #100 ckenja.ghook