#> ckenja.ghook:player/main
#
#
#@within function ckenja.ghook:player/ride

data modify storage ckenja.ghook.__temp__: player.data.SelectedItem set from entity @s SelectedItem
data modify storage ckenja.ghook.__temp__: player.data.Inventory set from entity @s Inventory

#グラップルを持ってるか検知
    execute if data storage ckenja.ghook.__temp__: player.data{SelectedItem:{tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}} run scoreboard players set #flag.have_rod ckenja.ghook 1
    execute unless data storage ckenja.ghook.__temp__: player.data{SelectedItem:{tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}} if data storage ckenja.ghook.__temp__: player.data{Inventory:[{Slot:-106b,tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}]} run scoreboard players set #flag.have_rod ckenja.ghook 1

#フックを前にぶっ飛ばす(SmartMotionで)
#フックがくっついてたらフラグを立てる
    execute as @e[type=bat,tag=ckenja.ghook.hook] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:player/hook
    execute if score #flag.hook_dar ckenja.ghook matches 1 run function ckenja.ghook:feature/reel

#ニンジン棒クリックしたら、フック射出
execute if score @s ckenja.ghook.cs matches 1.. run function ckenja.ghook:feature/shot

#フックがついてたらスイング計算
execute if score #flag.hooked ckenja.ghook matches 1 run function ckenja.ghook:player/main
data modify storage ckenja.ghook.__temp__: player.data.Motion set from entity @s Motion
data modify storage ckenja.ghook.__temp__: player.data.Rotation set from entity @s Rotation
execute as @e[type=pig,tag=ckenja.ghook.pig,distance=..6,sort=nearest] if score @s ckenja.ghook = #temp.id ckenja.ghook positioned as @s run function ckenja.ghook:pig/_

#リセット
    scoreboard players reset #flag.have_rod ckenja.ghook
    scoreboard players reset #flag.hook_far ckenja.ghook
    scoreboard players reset #flag.hooked ckenja.ghook

    scoreboard players reset #hooking ckenja.ghook

    scoreboard players reset #long ckenja.ghook
    scoreboard players reset #temp.long0 ckenja.ghook

#二回using_itemし終わったら、フック収納して慣性をMotion代入(./player.using.exit.second
execute if entity @s[tag=ckenja.ghook.player.using_item.before] run function ckenja.ghook:player/using/before

#using_item使い終わり検知用にタグ付ける
execute if entity @s[tag=ckenja.ghook.player.using_item] run function ckenja.ghook:player/using/now