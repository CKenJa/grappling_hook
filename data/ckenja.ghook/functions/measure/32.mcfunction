execute store success score #tmp.measure32 ckenja.ghook run execute if entity @s[distance=..16]
execute if score #tmp.measure32 ckenja.ghook matches 1 run function ckenja.ghook:measure/16
execute if score #tmp.measure32 ckenja.ghook matches 0 run function ckenja.ghook:measure/sum/16