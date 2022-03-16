#> ckenja.ghook:player/shot_crossbow/now
#
#
#
# @within function ckenja.ghook:player/main

#フックがないならフック射出
execute unless score #flag.have_hook ckenja.ghook matches 1 run function ckenja.ghook:feature/shot
