#> ckenja.ghook:feature/reel/void_kill
#
#
#
# @within function ckenja.ghook:feature/reel

tp @s ~ ~-10000 ~
kill @s
execute as @e[type=#ckenja.ghook:hookable_entity,tag=ckenja.ghook.target_entity,distance=..8] if score @s ckenja.ghook = #temp.id ckenja.ghook run tag @s remove ckenja.ghook.target_entity

