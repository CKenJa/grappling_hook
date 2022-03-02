#X軸反射
execute unless entity @s[scores={ckj.gh.sm.X=-1..1}] store result entity @s Rotation[0] float 0.01 run data get entity @s Rotation[0] -100
#Y軸反射 重力をリセット
execute unless entity @s[scores={ckj.gh.sm.Y=-1..1}] store result entity @s Rotation[1] float 0.01 run data get entity @s Rotation[1] -100
execute unless entity @s[scores={ckj.gh.sm.Y=-1..1}] run scoreboard players set @s ckj.gh.sm.GSum 0
#Z軸反射
execute unless entity @s[scores={ckj.gh.sm.Z=-1..1}] store result score # ckj.gh.sm.Calc run data get entity @s Rotation[0] -100
execute unless entity @s[scores={ckj.gh.sm.Z=-1..1}] if score # ckj.gh.sm.Calc matches 0.. store success score @s ckj.gh.sm.Z store result entity @s Rotation[0] float 0.01 run scoreboard players remove # ckj.gh.sm.Calc 18000
execute unless entity @s[scores={ckj.gh.sm.Z=-1..1}] if score # ckj.gh.sm.Calc matches ..-1 store success score @s ckj.gh.sm.Z store result entity @s Rotation[0] float 0.01 run scoreboard players add # ckj.gh.sm.Calc 18000
