#> ckenja.ghook:feature/move/unmoveable
#
#
#
# @within function ckenja.ghook:feature/move/loop

#ロープが縮む
execute if score #temp.long ckenja.ghook matches 1.. run tp @e[type=marker,tag=ckenja.ghook.marker,distance=..120] ^ ^ ^0.25
#そのまま
execute unless score #temp.long ckenja.ghook matches 1.. run tp @e[type=marker,tag=ckenja.ghook.marker,distance=..120] ^ ^ ^
