###北(-Z)

#このブロック
execute if block ~ ~ ~ #ckenja.ghook.smart_motion:ignore_collision align xyz positioned ~ ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s ckj.gh.sm.Z run tp @s ~ ~ ~-0.01
#このブロック 外向き逆さ階段の中央
execute if block ~ ~ ~ #minecraft:stairs[half=top] run function ckenja.ghook.smart_motion:core/cancel_z/north/this_stairs
#当たり判定なし
execute if block ~ ~ ~-0.45 #ckenja.ghook.smart_motion:no_collision store success score @s ckj.gh.sm.Z run tp @s ~ ~ ~-0.01
#slabs上半分
execute if block ~ ~ ~-0.45 #minecraft:slabs[type=bottom] align xyz positioned ~ ~-0.5 ~ unless entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s ckj.gh.sm.Z run tp @s ~ ~ ~-0.01
#slabs下半分
execute if block ~ ~ ~-0.45 #minecraft:slabs[type=top] align xyz positioned ~ ~-0.5 ~ if entity @s[dx=0,dy=0,dz=0] positioned as @s store success score @s ckj.gh.sm.Z run tp @s ~ ~ ~-0.01
#stairs
execute if block ~ ~ ~-0.45 #minecraft:stairs run function ckenja.ghook.smart_motion:core/cancel_z/north/stairs
#trapdoors
execute if block ~ ~ ~-0.45 #minecraft:trapdoors unless block ~ ~ ~-0.45 #minecraft:trapdoors[facing=north,open=true] store success score @s ckj.gh.sm.Z run tp @s ~ ~ ~-0.01
#doors
execute if block ~ ~ ~-0.45 #minecraft:doors unless block ~ ~ ~-0.45 #minecraft:doors[facing=north,open=false] unless block ~ ~ ~-0.45 #minecraft:doors[facing=east,open=true,hinge=right] unless block ~ ~ ~-0.45 #minecraft:doors[facing=west,open=true,hinge=left] store success score @s ckj.gh.sm.Z run tp @s ~ ~ ~-0.01
