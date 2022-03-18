execute store success score #tmp.measure64 ckenja.ghook run execute if entity @s[distance=..32]
execute if score #tmp.measure64 ckenja.ghook matches 1 run function ckenja.ghook:measure/32
execute if score #tmp.measure64 ckenja.ghook matches 0 run function ckenja.ghook:measure/sum/32