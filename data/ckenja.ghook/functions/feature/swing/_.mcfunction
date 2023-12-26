#> ckenja.ghook:feature/swing/_
#
#
#
# @within function ckenja.ghook:player/tick

execute store result storage ckenja.ghook.__temp__: feature.swing.get_sphere.plus double 0.001 run scoreboard players get @s ckenja.ghook.l
execute store result storage ckenja.ghook.__temp__: feature.swing.get_sphere.minus double -0.001 run scoreboard players get @s ckenja.ghook.l
data modify storage ckenja.ghook.__temp__: player.data.Motion set from entity @s Motion
data modify storage ckenja.ghook.__temp__: player.data.Rotation set from entity @s Rotation

#慣性。ないならMotionを参照する
    execute if score #flag.hook_shot_this_tick ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/motion
    execute unless score #flag.hook_shot_this_tick ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/intertia.get

    tag @s add ckenja.ghook.feature.swing.player
    execute rotated as @s summon marker run function ckenja.ghook:feature/swing/marker
    tag @s remove ckenja.ghook.feature.swing.player
    
#移動できるならPos代入して次tick用の慣性作成
    data modify storage ckenja.ghook.__temp__: player.feature.swing.Pos set from entity @s Pos
    execute store result score @s ckenja.ghook.x run data get storage ckenja.ghook.__temp__: player.feature.swing.Pos[0] 10000
    execute store result score @s ckenja.ghook.y run data get storage ckenja.ghook.__temp__: player.feature.swing.Pos[1] 10000
    execute store result score @s ckenja.ghook.z run data get storage ckenja.ghook.__temp__: player.feature.swing.Pos[2] 10000
    scoreboard players operation @s ckenja.ghook.x -= #player.pos.x ckenja.ghook
    scoreboard players operation @s ckenja.ghook.y -= #player.pos.y ckenja.ghook
    scoreboard players operation @s ckenja.ghook.z -= #player.pos.z ckenja.ghook
    scoreboard players operation @s ckenja.ghook.x *= #98 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.y *= #98 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.z *= #98 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.x /= #100 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.y /= #100 ckenja.ghook
    scoreboard players operation @s ckenja.ghook.z /= #100 ckenja.ghook

#ロープが縮んだら反映
    execute at @s as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:feature/swing/get_length

#演出
    execute rotated as @s on vehicle positioned as @s run tp @s ~ ~ ~ ~ 0
    execute unless score @s ckenja.ghook.l = #feature.swing.temp.length ckenja.ghook run playsound minecraft:block.chain.place player @a ~ ~ ~ 0.25 1
    scoreboard players operation @s ckenja.ghook.l < #feature.swing.temp.length ckenja.ghook
