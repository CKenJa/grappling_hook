execute store success score #tmp.measure5 ckenja.ghook run execute if entity @s[distance=..0.25]
execute if score #tmp.measure5 ckenja.ghook matches 1 run function ckenja.ghook:measure/0.25
execute if score #tmp.measure5 ckenja.ghook matches 0 run function ckenja.ghook:measure/sum/0.25
