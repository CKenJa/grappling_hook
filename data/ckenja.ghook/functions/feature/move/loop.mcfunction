#> ckenja.ghook:feature/move/loop
#
# 当たり判定チェックとか挟みつつループ
# markerを通り過ぎるor衝突: &終了
# ロープ長まで行った: 終了
# そうでなければ次のループ
#
# @within function ckenja.ghook:feature/move/marker

scoreboard players remove #temp.long ckenja.ghook 25
execute store success score #flag.moveable ckenja.ghook run execute if score #temp.long ckenja.ghook matches 1.. if block ~0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision
#https://twitter.com/Nerumerosan/status/1455855757883162630
execute unless score #flag.moveable ckenja.ghook matches 0 if score #flag.jet ckenja.ghook matches 1 at @s facing entity @e[tag=ckenja.ghook.marker,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^ ^ ^-4.0 if entity @s[distance=..5.0] run scoreboard players set #flag.moveable ckenja.ghook 1

execute unless score #flag.moveable ckenja.ghook matches 1 run function ckenja.ghook:feature/move/unmoveable
execute if score #flag.moveable ckenja.ghook matches 1 positioned ^ ^ ^-0.25 run function ckenja.ghook:feature/move/loop
scoreboard players reset #flag.moveable ckenja.ghook