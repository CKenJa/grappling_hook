#> ckenja.ghook:player/using_item/now
#
#
#
# @within function ckenja.ghook:player/main


#使い終わり検知用にタグ付ける
tag @s add ckenja.ghook.player.shot_crossbow.before

#フックがあるならジェット射出
execute if score #flag.have_hook ckenja.ghook matches 1 run scoreboard players set #flag.jet ckenja.ghook 1

