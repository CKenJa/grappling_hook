#> ckenja.ghook:feature/move/marker
#
#
#
# @within function ckenja.ghook:feature/move/pig

data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos

#ループでマーカーの方向に移動して球上の位置を出す
    execute positioned as @s as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score @s ckenja.ghook = #temp.id ckenja.ghook facing entity @s feet positioned as @s positioned ^ ^ ^-0.25 run function ckenja.ghook:feature/move/loop
    data modify storage ckenja.ghook.__temp__: pig.merge.Pos set from entity @s Pos

kill @s