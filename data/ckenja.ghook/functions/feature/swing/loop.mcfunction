#> ckenja.ghook:feature/swing/loop
#
# 当たり判定チェックとか挟みつつループ
# 100m以上離れているかつ衝突: 終了
# jet使うかつmarkerを通り過ぎる: 終了
# ロープ長まで行った: 終了
# そうでなければ次のループ
#
# @within function ckenja.ghook:feature/swing/marker

scoreboard players reset #flag.unmoveable ckenja.ghook

scoreboard players remove #temp.feature.swing.loop ckenja.ghook 125

#次のtickのロープの長さを決める
scoreboard players add #temp.feature.swing.updated_length ckenja.ghook 125

#ロープの長さより長く距離をとろうとするとunmoveableフラグを建てる
execute if score #temp.feature.swing.loop ckenja.ghook matches ..0 run scoreboard players set #flag.unmoveable ckenja.ghook 1

#ジェットモードの場合、1単位以内にマーカーがあればその座標になる。
execute if score #flag.have_hook ckenja.ghook matches 1 if entity @s[distance=..0.125] run scoreboard players set #flag.unmoveable ckenja.ghook 1

#unmoveableフラグは、次の地点に移動できない場合に建てる。
execute if score #flag.unmoveable ckenja.ghook matches 1 run tp @s ~ ~ ~
execute unless score #flag.unmoveable ckenja.ghook matches 1 positioned ^ ^ ^-0.125 run function ckenja.ghook:feature/swing/loop
