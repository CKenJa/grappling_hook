#> ckenja.ghook:hook/_
#
#
#
# @within function ckenja.ghook:player/_

#フックを消すか否か
    #ついでにリードがあるか否か
    execute store success score #flag.have_hook ckenja.ghook run execute if data entity @s Leash.UUID
    execute if score #flag.have_hook ckenja.ghook matches 0 at @s as @e[type=item,nbt={Item:{id:"minecraft:lead",Count:1b}},distance=..0.1] run kill @s

    execute if score #flag.have_hook ckenja.ghook matches 1 unless entity @s[distance=..104] run scoreboard players set #flag.have_hook ckenja.ghook 0
    #こっちはフックを消すか否かの処理なので共通化はしない
    execute if score #flag.have_hook ckenja.ghook matches 0 run scoreboard players set #flag.hook.kill ckenja.ghook 1
    execute if score #flag.have_hook ckenja.ghook matches 1 run scoreboard players set #flag.hooked ckenja.ghook 1
