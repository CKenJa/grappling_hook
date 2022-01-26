#> ckenja.ghook:bobber/_
#
# atなしで実行
#
# @within function ckenja.ghook:tick

#アイテムを持っているにしろ持っていないにしろ、主人登録
execute unless score @s ckenja.ghook matches -2147483648..2147483647 run scoreboard players operation @s ckenja.ghook = @a[sort=nearest,limit=1] ckenja.ghook
execute if score @s ckenja.ghook = #temp.id ckenja.ghook run function ckenja.ghook:bobber/master
particle crit ~ ~ ~ 0 0 0 0 1 force
