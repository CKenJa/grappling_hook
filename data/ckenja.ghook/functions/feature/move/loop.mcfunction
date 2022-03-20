#> ckenja.ghook:feature/move/loop
#
# 当たり判定チェックとか挟みつつループ
# 100m以上離れているかつ衝突: 終了
# jet使うかつmarkerを通り過ぎる: 終了
# ロープ長まで行った: 終了
# そうでなければ次のループ
#
# @within function ckenja.ghook:feature/move/marker

scoreboard players reset #flag.unmoveable ckenja.ghook

scoreboard players remove #temp.long ckenja.ghook 125

#ロープの長さより長く距離をとろうとするとunmoveableフラグを建てる
execute if score #temp.long ckenja.ghook matches ..0 run scoreboard players set #flag.unmoveable ckenja.ghook 1

#ジェットモードの場合、1単位以内にマーカーがあればその座標になる。
execute if score #flag.jet ckenja.ghook matches 1 if entity @s[distance=..0.125] run scoreboard players set #flag.unmveable ckenja.ghook 1

#unmoveableフラグは、その地点に移動できない場合に建てる。
execute unless score #flag.unmoveable ckenja.ghook matches 1 positioned ^ ^ ^-0.125 run function ckenja.ghook:feature/move/loop

#ブタ座標側から衝突判定を取る
#既に位置を決定していたら何もしない
execute unless score #flag.no_collision ckenja.ghook matches 1 if block ~0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision run function ckenja.ghook:feature/move/no_collision
execute unless score #flag.no_collision ckenja.ghook matches 1 run scoreboard players add #temp.long ckenja.ghook 125
