#> ckenja.ghook:player/main
#
#
#@within function ckenja.ghook:player/ride

#グラップルを持ってるか検知
    data modify storage ckenja.ghook.__temp__: player.data.SelectedItem set from entity @s SelectedItem
    execute if data storage ckenja.ghook.__temp__: player.data.SelectedItem{tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}} run scoreboard players set #flag.have_rod ckenja.ghook 1
    #execute unless score #flag.have_rod ckenja.ghook matches 1 run 
    data modify storage ckenja.ghook.__temp__: player.data.Inventory set from entity @s Inventory
    execute if data storage ckenja.ghook.__temp__: player.data.Inventory[{Slot:-106b,tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}] run scoreboard players set #flag.have_rod ckenja.ghook 1

#フックを前にぶっ飛ばす(SmartMotionで)
#フックがくっついてたらフラグを立てる
    execute as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:player/hook/_
    execute if score #flag.hook_far ckenja.ghook matches 1 run function ckenja.ghook:feature/reel
    execute if score #flag.hooked.init ckenja.ghook matches 1 run scoreboard players operation @s ckenja.ghook.l = #measure ckenja.ghook
    #フックがないのにアイテムがニンジン棒じゃなかったらニンジン棒に
    #execute unless score #flag.have_rod ckenja.ghook matches 1 run function ckenja.ghook:feature/reel

#ニンジン棒クリックしたら、フック射出
execute if score @s ckenja.ghook.cs matches 1.. if score #flag.have_rod ckenja.ghook matches 1 run function ckenja.ghook:feature/shot

#二回using_itemし終わったら、フック収納して慣性をMotion代入(./player.using.exit.second
execute if entity @s[tag=ckenja.ghook.player.using_item.before] run function ckenja.ghook:player/using/before

#using_item使い終わり検知用にタグ付ける、ジェット計算
execute if entity @s[tag=ckenja.ghook.player.using_item] run function ckenja.ghook:player/using/now

#フックがついてたらスイング計算
execute if score #flag.hooked ckenja.ghook matches 1 run function ckenja.ghook:feature/move/_

#リセット
    scoreboard players reset #flag.have_rod ckenja.ghook
    scoreboard players reset #flag.hook_far ckenja.ghook
    scoreboard players reset #flag.hooked ckenja.ghook
    scoreboard players reset #flag.hooked.init ckenja.ghook
    scoreboard players reset #flag.jet ckenja.ghook
    scoreboard players reset #have.hook ckenja.ghook

    scoreboard players reset #measure ckenja.ghook
