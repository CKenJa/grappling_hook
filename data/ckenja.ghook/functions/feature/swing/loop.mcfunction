#> ckenja.ghook:feature/swing/loop
#
# 当たり判定チェックとか挟みつつループ
#
# @within function ckenja.ghook:feature/swing/marker

scoreboard players reset #flag.unmoveable ckenja.ghook

scoreboard players remove #temp.feature.swing.loop ckenja.ghook 125

#次のtickのロープの長さを決める
scoreboard players add #temp.feature.swing.updated_length ckenja.ghook 125

#ロープの長さより長く距離をとろうとするとunmoveableフラグを建てる
execute if score #temp.feature.swing.loop ckenja.ghook matches ..0 run scoreboard players set #flag.unmoveable ckenja.ghook 1

#1単位以内にマーカーがあればその座標になる。
execute if score #flag.have_hook ckenja.ghook matches 1 if entity @s[distance=..0.125] run function ckenja.ghook:feature/swing/no_tension

#unmoveableフラグは、次の地点に移動できない場合に建てる。
execute if score #flag.unmoveable ckenja.ghook matches 1 run tp @s ~ ~ ~

execute unless score #flag.unmoveable ckenja.ghook matches 1 positioned ^ ^ ^-0.125 run function ckenja.ghook:feature/swing/loop
