#> ckenja.ghook:player/main
#
#
#@within function ckenja.ghook:player/ride

#クリック検知
execute if entity @s[tag=ckenja.ghook.player.using_item] run function ckenja.ghook:player/using/now

#二回クリックし終わったら、フック収納して慣性をMotion代入(./player.using.exit.second
execute if entity @s[tag=ckenja.ghook.player.using_item.before] run function ckenja.ghook:player/using/before

execute if score #flag.hooked.init ckenja.ghook matches 1 run scoreboard players operation @s ckenja.ghook.l = #measure ckenja.ghook
execute if score #flag.hooked ckenja.ghook matches 1 run function ckenja.ghook:feature/move/_
