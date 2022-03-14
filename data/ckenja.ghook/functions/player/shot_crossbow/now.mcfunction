#> ckenja.ghook:player/using/now
#
#
#
# @within function ckenja.ghook:player/main

tag @s remove ckenja.ghook.player.using_item

#using_item使い終わり検知用にタグ付ける
tag @s add ckenja.ghook.player.using_item.before

#フックがないならフック射出、あるならジェット噴出
execute unless score #flag.have_hook ckenja.ghook matches 1 run function ckenja.ghook:feature/shot
execute if score #flag.have_hook ckenja.ghook matches 1 run scoreboard players set #flag.jet ckenja.ghook 1
