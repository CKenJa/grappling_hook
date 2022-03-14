#> ckenja.ghook:feature/move/loop
#
# 当たり判定チェックとか挟みつつループ
# 100m以上離れているかつ衝突: 終了
# jet使うかつmarkerを通り過ぎる: 終了
# ロープ長まで行った: 終了
# そうでなければ次のループ
#
# @within function ckenja.ghook:feature/move/marker

scoreboard players remove #temp.long ckenja.ghook 25
scoreboard players add #temp.distance ckenja.ghook 25

#no_collisionフラグが立っておらず、かつ1m以上動いているなら、unmoveableフラグを建てる
execute if block ~0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision run scoreboard players set #flag.no_collision ckenja.ghook 1
execute unless score #flag.unmoveable ckenja.ghook matches 1 if score #temp.distance ckenja.ghook matches 100.. run scoreboard players set #flag.unmoveable ckenja.ghook 1

#ロープの長さより長く距離をとろうとするとunmoveableフラグを建てる
execute if score #temp.long ckenja.ghook matches ..0 run scoreboard players set #flag.unmoveable ckenja.ghook 1

#ジェットモードの場合、1単位以内にマーカーがあればその座標になる。
execute if score #flag.jet ckenja.ghook matches 1 if entity @s[distance=..0.25] run scoreboard players set #flag.unmveable ckenja.ghook 1
execute if score #flag.jet ckenja.ghook matches 1 if entity @s[distance=..0.25] run scoreboard players set #flag.tpmarker ckenja.ghook 1

#unmoveableフラグは、その地点に移動できない場合に建てる。そのためその1単位手前に移動する。
execute if score #flag.unmoveable ckenja.ghook matches 1 run function ckenja.ghook:feature/move/unmoveable
execute unless score #flag.unmoveable ckenja.ghook matches 1 positioned ^ ^ ^-0.25 run function ckenja.ghook:feature/move/loop
