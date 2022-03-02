#実行位置にTPさせ、予測座標を現tickに合わせる
tp @s ~ ~ ~ ~ ~
execute store result score @s ckj.gh.sm.X run data get entity @s Pos[0] 100
execute store result score @s ckj.gh.sm.Y run data get entity @s Pos[1] 100
execute store result score @s ckj.gh.sm.Z run data get entity @s Pos[2] 100
