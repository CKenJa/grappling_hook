#> ckenja.ghook:feature/swing/marker
#
#
#
# @within function ckenja.ghook:feature/swing/_

data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos

#ループでマーカーの方向に移動して球上の位置を出す
    execute positioned as @s as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score @s ckenja.ghook = #temp.id ckenja.ghook facing entity @s feet positioned as @s positioned ^ ^ ^-0.125 as @e[type=marker,tag=ckenja.ghook.marker,distance=..120] run function ckenja.ghook:feature/swing/loop

kill @s
