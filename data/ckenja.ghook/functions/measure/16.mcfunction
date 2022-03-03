execute store success score #tmp.measure ckenja.ghook run execute if entity @s[distance=..8]
execute if score #tmp.measure ckenja.ghook matches 1 run function ckenja.ghook:measure/8
execute if score #tmp.measure ckenja.ghook matches 0 run function ckenja.ghook:measure/sum/8