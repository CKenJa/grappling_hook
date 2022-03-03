#say ckenja.ghook.SmartMotion の導入に成功しました

scoreboard objectives add ckj.gh.sm.Calc dummy
scoreboard objectives add ckj.gh.sm.X dummy
scoreboard objectives add ckj.gh.sm.Y dummy
scoreboard objectives add ckj.gh.sm.Z dummy
scoreboard objectives add ckj.gh.sm.Speed dummy
scoreboard objectives add ckj.gh.sm.G dummy
scoreboard objectives add ckj.gh.sm.GSum dummy

scoreboard players set #-1 ckj.gh.sm.Calc -1
scoreboard players set #100 ckj.gh.sm.Calc 100

execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run summon marker 0.0 0.0 0.0 {UUID:[I;0,6419,0,0]}
