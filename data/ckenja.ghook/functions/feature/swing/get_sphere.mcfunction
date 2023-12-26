#> ckenja.ghook:feature/swing/get_sphere
#
# 当たり判定チェックとか挟みつつループ
#
# @within function ckenja.ghook:feature/swing/marker

#球の中にマーカーがあればその座標になる。
$execute if entity @s[distance=..$(plus)] at @s run tp @s ~ ~ ~
$execute unless entity @s[distance=..$(plus)] positioned ^ ^ ^$(minus) run tp @s ~ ~ ~
