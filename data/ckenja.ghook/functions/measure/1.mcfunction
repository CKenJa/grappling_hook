execute store success score #tmp.measure1 ckenja.ghook run execute if entity @s[distance=..0.5]
execute if score #tmp.measure1 ckenja.ghook matches 1 run function ckenja.ghook:measure/0.5
execute if score #tmp.measure1 ckenja.ghook matches 0 run function ckenja.ghook:measure/sum/0.5