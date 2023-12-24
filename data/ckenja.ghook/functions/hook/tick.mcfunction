#> ckenja.ghook:hook/tick
#
#リードがあるか否かなどからフックを消すかどうかフラグを建てる
#
# @within function ckenja.ghook:player/tick

#フックを消すか否か
    #ついでにリードがあるか否か
    scoreboard players set #flag.have_hook ckenja.ghook 0
    execute on leasher run scoreboard players set #flag.have_hook ckenja.ghook 1
    execute if score #flag.have_hook ckenja.ghook matches 0 at @s as @e[type=item,nbt={Item:{id:"minecraft:lead",Count:1b}},distance=..0.1] run kill @s
    execute if score #flag.have_hook ckenja.ghook matches 1 unless entity @s[distance=..104] run scoreboard players set #flag.have_hook ckenja.ghook 0
    #こっちはフックを消すか否かの処理なので共通化はしない
    execute if score #flag.have_hook ckenja.ghook matches 0 run scoreboard players set #flag.hook.kill ckenja.ghook 1
