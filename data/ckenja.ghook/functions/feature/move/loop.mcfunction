#> ckenja.ghook:feature/move/loop
#
# 当たり判定チェックとか挟みつつループ
#
# @within function ckenja.ghook:feature/move/hook

scoreboard players remove #temp.long ckenja.ghook 25
execute store success score #temp.moveable ckenja.ghook run execute if score #temp.long ckenja.ghook matches 1.. if block ~0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision
execute if score #flag.moveable ckenja.ghook matches 0 run function ckenja.ghook:feature/move/unmoveable
execute if score #flag.moveable ckenja.ghook matches 1 positioned ^ ^ ^-0.25 run function ckenja.ghook:feature/move/loop