#> ckenja.ghook:feature/swing/marker
#
#
#
# @within function ckenja.ghook:feature/swing/_

#プレイヤー座標と慣性の和
    scoreboard players operation #marker.merge.x ckenja.ghook = #player.pos.x ckenja.ghook
    scoreboard players operation #marker.merge.y ckenja.ghook = #player.pos.y ckenja.ghook
    scoreboard players operation #marker.merge.z ckenja.ghook = #player.pos.z ckenja.ghook

#ガス噴射
    execute store result score #feature.swing.motion.x ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[0] 10000
    #scoreboard players set #feature.swing.motion.y ckenja.ghook 0
    execute store result score #feature.swing.motion.z ckenja.ghook run data get storage ckenja.ghook.__temp__: player.data.Motion[2] 10000
    scoreboard players operation #feature.swing.temp.x ckenja.ghook = #feature.swing.motion.x ckenja.ghook
    scoreboard players operation #feature.swing.temp.x ckenja.ghook *= #feature.swing.motion.x ckenja.ghook
    scoreboard players operation #feature.swing.temp.z ckenja.ghook = #feature.swing.motion.z ckenja.ghook
    scoreboard players operation #feature.swing.temp.z ckenja.ghook *= #feature.swing.motion.z ckenja.ghook
    scoreboard players operation #feature.swing.jet ckenja.ghook = #feature.swing.temp.x ckenja.ghook
    scoreboard players operation #feature.swing.jet ckenja.ghook += #feature.swing.temp.z ckenja.ghook
    execute if score #feature.swing.jet ckenja.ghook matches 10000.. run function ckenja.ghook:feature/swing/get_jet_vec

#慣性
    scoreboard players operation #marker.merge.x ckenja.ghook += #intertia.x ckenja.ghook
    scoreboard players operation #marker.merge.y ckenja.ghook += #intertia.y ckenja.ghook
    scoreboard players operation #marker.merge.z ckenja.ghook += #intertia.z ckenja.ghook

#重力
    execute if score #feature.swing.jet ckenja.ghook matches 10000.. run scoreboard players remove #marker.merge.y ckenja.ghook 196
    execute unless score #feature.swing.jet ckenja.ghook matches 10000.. run scoreboard players remove #marker.merge.y ckenja.ghook 784

#ループでマーカーの方向に移動して球上の位置を出す
#フックからロープ距離分マーカー方向に進んで、その場所の座標を記憶
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #marker.merge.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #marker.merge.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #marker.merge.z ckenja.ghook
    data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos
    tag @s add ckenja.ghook.marker.this
    execute positioned as @s as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score @s ckenja.ghook = #temp.id ckenja.ghook facing entity @s feet positioned as @s as @e[type=marker,tag=ckenja.ghook.marker.this,distance=..120] run function ckenja.ghook:feature/swing/get_sphere with storage ckenja.ghook.__temp__: feature.swing.get_sphere
    tag @s remove ckenja.ghook.marker.this

#衝突判定を取る
    scoreboard players set #feature.swing.collision_detect_loop ckenja.ghook 1
    execute facing entity @s feet positioned ~ ~ ~ run function ckenja.ghook:feature/swing/collision_detection/_

kill @s
