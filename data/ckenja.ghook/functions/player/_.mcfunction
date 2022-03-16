#> ckenja.ghook:player/_
#
# プレイヤー全てに毎tick実行
#
# @within function ckenja.ghook:tick

execute unless score @s ckenja.ghook matches -2147483648..2147483647 run function ckenja.ghook:player/id

#座標をロープ長検知に使うのでatはつけない
execute as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:hook/_

execute if entity @s[tag=ckenja.ghook.player.ride_pig] run function ckenja.ghook:player/ride

execute if score #flag.hook.kill ckenja.ghook matches 1 run function ckenja.ghook:feature/reel

#リセット

    #空気を装填
    #わざわざ使わなくてもメインハンドとオフハンドみるだけでいい気がするめんどくさい
    data modify storage player_item_tuner: condition.if set value {tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}
    data modify storage player_item_tuner: result.merge set value {tag:{ChargedProjectiles:[{},{},{}],Charged:0b}}
    execute if entity @s run function #player_item_tuner:merge/inventory

    tag @s remove ckenja.ghook.player.shot_crossbow

    scoreboard players reset #flag.have_hook ckenja.ghook
    scoreboard players reset #flag.hooked ckenja.ghook
    scoreboard players reset #flag.hooked.init ckenja.ghook
    scoreboard players reset #flag.jet ckenja.ghook

    scoreboard players reset #measure ckenja.ghook

