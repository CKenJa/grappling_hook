#現tickの座標取得
execute store result score # ckj.gh.sm.X run data get entity @s Pos[0] 100
execute store result score # ckj.gh.sm.Y run data get entity @s Pos[1] 100
execute store result score # ckj.gh.sm.Z run data get entity @s Pos[2] 100
#前Tickと現Tickの座標の差を算出 ブロックに当たっていればずれる
scoreboard players operation @s ckj.gh.sm.X -= # ckj.gh.sm.X
scoreboard players operation @s ckj.gh.sm.Y -= # ckj.gh.sm.Y
scoreboard players operation @s ckj.gh.sm.Z -= # ckj.gh.sm.Z

#ブロック判定キャンセル
execute unless entity @s[scores={ckj.gh.sm.X=-1..1}] run function ckenja.ghook.smart_motion:core/cancel_x/
execute unless entity @s[scores={ckj.gh.sm.Z=-1..1}] run function ckenja.ghook.smart_motion:core/cancel_z/
#天井にヒットボックスの上端が当たった場合は必ずブロック判定キャンセル
execute unless entity @s[scores={ckj.gh.sm.Y=..1}] store success score @s ckj.gh.sm.Y run tp @s ~ ~0.01 ~
#天井をすり抜けないように上限補正
scoreboard players set #YMotion ckj.gh.sm.Calc 100000
execute if entity @s[x_rotation=-90..0] if predicate ckenja.ghook.smart_motion:limit_y_motion run function ckenja.ghook.smart_motion:core/limit_y_motion/
#ブロック判定
execute unless entity @s[scores={ckj.gh.sm.X=-1..1,ckj.gh.sm.Y=-1..1,ckj.gh.sm.Z=-1..1}] run function ckenja.ghook.smart_motion:core/block

#単位ベクトル取得、スピード補正、Motionに適用
execute in minecraft:overworld positioned 0.0 0.0 0.0 rotated as @s run tp 0-0-1913-0-0 ^ ^ ^1
execute store result score @s ckj.gh.sm.X run data get entity 0-0-1913-0-0 Pos[0] 100
execute store result score @s ckj.gh.sm.Y run data get entity 0-0-1913-0-0 Pos[1] 100
execute store result score @s ckj.gh.sm.Z run data get entity 0-0-1913-0-0 Pos[2] 100
#X
scoreboard players operation @s ckj.gh.sm.X *= @s ckj.gh.sm.Speed
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation @s ckj.gh.sm.X /= #100 ckj.gh.sm.Calc
#Y 重力補正、天井をすり抜けないように上限補正
scoreboard players operation @s ckj.gh.sm.Y *= @s ckj.gh.sm.Speed
scoreboard players operation @s ckj.gh.sm.GSum += @s ckj.gh.sm.G
scoreboard players operation @s ckj.gh.sm.Y -= @s ckj.gh.sm.GSum
scoreboard players operation @s ckj.gh.sm.Y < #YMotion ckj.gh.sm.Calc
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation @s ckj.gh.sm.Y /= #100 ckj.gh.sm.Calc
#Z
scoreboard players operation @s ckj.gh.sm.Z *= @s ckj.gh.sm.Speed
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation @s ckj.gh.sm.Z /= #100 ckj.gh.sm.Calc

#次tickの予測座標を計算
scoreboard players operation @s ckj.gh.sm.X += # ckj.gh.sm.X
scoreboard players operation @s ckj.gh.sm.Y += # ckj.gh.sm.Y
scoreboard players operation @s ckj.gh.sm.Z += # ckj.gh.sm.Z
