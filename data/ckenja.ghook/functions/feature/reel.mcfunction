#> ckenja.ghook:feature/reel
#
#
#
# @within function ckenja.ghook:player/**

scoreboard players reset #flag.hook.kill ckenja.ghook
tag @s remove ckenja.ghook.player.using_item.first_exit

#フック収納
execute as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:void_kill

#慣性をMotion代入
execute if entity @s[tag=ckenja.ghook.player.ride_pig] as @e[type=pig,tag=ckenja.ghook.pig,distance=..6] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:feature/reel.pig

say reel
