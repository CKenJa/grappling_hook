#> ckenja.ghook:player/check_quit_using
#
#
#
# @within function ckenja.ghook:player/tick

tag @s remove ckenja.ghook.player.using_item.before
execute if score #flag.have_hook ckenja.ghook matches 1 run scoreboard players set #flag.hook.kill ckenja.ghook 1
