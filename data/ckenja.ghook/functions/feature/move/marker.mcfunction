#> ckenja.ghook:feature/move/marker
#
#
#
# @within function ckenja.ghook:feature/move/pig

data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos

#デバッグ
    execute at @s run particle composter ~ ~ ~
    tellraw @p {"score":{"name":"#temp.long","objective":"ckenja.ghook"}}

#ループでマーカーの方向に移動して球上の位置を出す
    tag @s add ckenja.ghook.marker.this
    execute as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score @s ckenja.ghook = #temp.id ckenja.ghook facing entity @s feet positioned as @s positioned ^ ^ ^-0.25 as @e[type=marker,tag=ckenja.ghook.marker.this,distance=..120] run function ckenja.ghook:feature/move/loop
    tag @s remove ckenja.ghook.marker.this
    scoreboard players reset #temp.distance ckenja.ghook
        execute unless score #flag.no_collision ckenja.ghook matches 1 run say collision
    scoreboard players reset #flag.no_collision ckenja.ghook


    data modify storage ckenja.ghook.__temp__: pig.merge.Pos set from entity @s Pos

kill @s

