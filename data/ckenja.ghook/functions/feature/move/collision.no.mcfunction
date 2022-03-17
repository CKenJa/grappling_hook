#> ckenja.ghook:feature/move/collision.no
#
#
#
# @within function ckenja.ghook:feature/move/collision

scoreboard players set #flag.no_collision ckenja.ghook 1

#ロープが縮む
execute if score #temp.long ckenja.ghook matches 1.. unless score #flag.tpmarker ckenja.ghook matches 1 run tp @s ^ ^ ^0.25
#そのまま
execute unless score #temp.long ckenja.ghook matches 1.. run tp @s ^ ^ ^
execute if score #flag.tpmarker ckenja.ghook matches 1 run tp @s ^ ^ ^

    execute if score #flag.tpmarker ckenja.ghook matches 1 run say tpmarker
scoreboard players reset #flag.tpmarker ckenja.ghook
