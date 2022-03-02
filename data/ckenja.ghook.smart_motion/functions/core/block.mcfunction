#ブロックに当たると消える tag=Break
kill @s[tag=Break]
#ブロックに当たるとくっつく tag=Stick
scoreboard players set @s[tag=Stick] ckj.gh.sm.Speed 0
#ブロックに当たると反射 tag=Bounce
execute if entity @s[tag=Bounce] run function ckenja.ghook.smart_motion:core/bounce
