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

#衝突していない: 1
execute if block ~0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~ ~-0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~0.3 #ckenja.ghook:no_collision if block ~-0.3 ~1.8 ~-0.3 #ckenja.ghook:no_collision run scoreboard players set #flag.collision ckenja.ghook 0
#近い: 1
execute unless score #temp.distance ckenja.ghook matches 100.. run scoreboard players set #flag.near ckenja.ghook 1
#jet使うかつmarkerを通り過ぎる: 1
#https://twitter.com/Nerumerosan/status/1455855757883162630
execute if score #flag.jet ckenja.ghook matches 1 at @s facing entity @e[tag=ckenja.ghook.marker,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^ ^ ^-4.0 if entity @s[distance=..5.0] run scoreboard players set #flag.acrobat ckenja.ghook 1
#ロープ長がまだある: 1
execute if score #temp.long ckenja.ghook matches 1.. run scoreboard players set #flag.no_lead ckenja.ghook 1

# 100m以上離れているかつ衝突: 終了
execute if score #flag.collision ckenja.ghook matches 1 unless score #flag.near ckenja.ghook matches 1 run scoreboard players set #flag.collision_check ckenja.ghook 1

# jet使うかつmarkerを通り過ぎる: 終了

# ロープ長まで行った: 終了

execute unless score #flag.collision_check ckenja.ghook matches 1 unless score #flag.acrobat ckenja.ghook matches 1 unless score #flag.no_lead ckenja.ghook matches 1 run scoreboard players set #flag.moveable ckenja.ghook 1 

execute if score #flag.moveable ckenja.ghook matches 1 run function ckenja.ghook:feature/move/unmoveable
execute unless score #flag.moveable ckenja.ghook matches 1 positioned ^ ^ ^-0.25 run function ckenja.ghook:feature/move/loop

#flag.collision
#flag.acrobat
#flag.near
#flag.no_lead