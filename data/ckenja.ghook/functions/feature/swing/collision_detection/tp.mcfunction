#> ckenja.ghook:feature/swing/collision_detection/tp
#
#
#
# @within
#   function ckenja.ghook:feature/swing/collision_detection/*
#   function ckenja.ghook:feature/swing/collision_responce/_2

execute as @a[tag=ckenja.ghook.feature.swing.player,distance=..120] on vehicle run tp @s ~ ~0.6 ~
scoreboard players set #feature.swing.collision_detect_loop ckenja.ghook 0
