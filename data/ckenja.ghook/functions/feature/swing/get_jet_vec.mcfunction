
#視線を使って回転軸単位ベクトルを取得
execute rotated ~90 0 positioned 0.0 0.0 0.0 in minecraft:overworld run tp @s ^ ^ ^1
data modify storage ckenja.ghook.__temp__: marker.data.Pos set from entity @s Pos
execute store result score #feature.swing.axis.x ckenja.ghook run data get storage ckenja.ghook.__temp__: marker.data.Pos[0] 10000
#execute store result score #feature.swing.axis.y ckenja.ghook run data get storage ckenja.ghook.__temp__: marker.data.Pos[1] 10000
execute store result score #feature.swing.axis.z ckenja.ghook run data get storage ckenja.ghook.__temp__: marker.data.Pos[2] 10000

#let cos_theta = angle_rad.cos();
#sin(-Θ)=-sin(Θ)
data modify storage math: in set from storage ckenja.ghook.__temp__: player.data.Rotation[1]
function #math:sin
execute store result score #feature.swing.sin_theta ckenja.ghook run data get storage math: out -10000

#let sin_theta = angle_rad.sin();
data modify storage math: in set from storage ckenja.ghook.__temp__: player.data.Rotation[1]
function #math:cos
execute store result score #feature.swing.cos_theta ckenja.ghook run data get storage math: out 10000

#let one_minus_cos_theta = 1.0 - cos_theta;
scoreboard players set #feature.swing.one_minus_cos_theta ckenja.ghook 10000
scoreboard players operation #feature.swing.one_minus_cos_theta ckenja.ghook -= #feature.swing.cos_theta ckenja.ghook

#let xy = axis.x * axis.y * one_minus_cos_theta;
#axis.y=0

#let xz = axis.x * axis.z * one_minus_cos_theta;
scoreboard players operation #feature.swing.xz ckenja.ghook = #feature.swing.one_minus_cos_theta ckenja.ghook
scoreboard players operation #feature.swing.xz ckenja.ghook *= #feature.swing.axis.x ckenja.ghook
scoreboard players operation #feature.swing.xz ckenja.ghook /= #10000 ckenja.ghook
scoreboard players operation #feature.swing.xz ckenja.ghook *= #feature.swing.axis.z ckenja.ghook
scoreboard players operation #feature.swing.xz ckenja.ghook /= #10000 ckenja.ghook

#let yz = axis.y * axis.z * one_minus_cos_theta;
#axis.y=0

#let sin_x = axis.x * sin_theta;
scoreboard players operation #feature.swing.sin_x ckenja.ghook = #feature.swing.sin_theta ckenja.ghook
scoreboard players operation #feature.swing.sin_x ckenja.ghook *= #feature.swing.axis.x ckenja.ghook
scoreboard players operation #feature.swing.sin_x ckenja.ghook /= #10000 ckenja.ghook

#let sin_y = axis.y * sin_theta;
#axis.y=0

#let sin_z = axis.z * sin_theta;
scoreboard players operation #feature.swing.sin_z ckenja.ghook = #feature.swing.sin_theta ckenja.ghook
scoreboard players operation #feature.swing.sin_z ckenja.ghook *= #feature.swing.axis.z ckenja.ghook
scoreboard players operation #feature.swing.sin_z ckenja.ghook /= #10000 ckenja.ghook

#result.x = self.x * (cos_theta + axis.x * axis.x * one_minus_cos_theta)
scoreboard players operation #feature.swing.result.x ckenja.ghook = #feature.swing.one_minus_cos_theta ckenja.ghook
scoreboard players operation #feature.swing.result.x ckenja.ghook *= #feature.swing.axis.x ckenja.ghook
scoreboard players operation #feature.swing.result.x ckenja.ghook /= #10000 ckenja.ghook
scoreboard players operation #feature.swing.result.x ckenja.ghook *= #feature.swing.axis.x ckenja.ghook
scoreboard players operation #feature.swing.result.x ckenja.ghook /= #10000 ckenja.ghook
scoreboard players operation #feature.swing.result.x ckenja.ghook += #feature.swing.cos_theta ckenja.ghook
scoreboard players operation #feature.swing.result.x ckenja.ghook *= #feature.swing.motion.x ckenja.ghook
scoreboard players operation #feature.swing.result.x ckenja.ghook /= #10000 ckenja.ghook

#result.y = self.y * (cos_theta + axis.y * axis.y * one_minus_cos_theta)
#self.y=0

#result.z = self.z * (cos_theta + axis.z * axis.z * one_minus_cos_theta)
scoreboard players operation #feature.swing.result.z ckenja.ghook = #feature.swing.one_minus_cos_theta ckenja.ghook
scoreboard players operation #feature.swing.result.z ckenja.ghook *= #feature.swing.axis.z ckenja.ghook
scoreboard players operation #feature.swing.result.z ckenja.ghook /= #10000 ckenja.ghook
scoreboard players operation #feature.swing.result.z ckenja.ghook *= #feature.swing.axis.z ckenja.ghook
scoreboard players operation #feature.swing.result.z ckenja.ghook /= #10000 ckenja.ghook
scoreboard players operation #feature.swing.result.z ckenja.ghook += #feature.swing.cos_theta ckenja.ghook
scoreboard players operation #feature.swing.result.z ckenja.ghook *= #feature.swing.motion.z ckenja.ghook
scoreboard players operation #feature.swing.result.z ckenja.ghook /= #10000 ckenja.ghook

#result.x += self.y * (xy - sin_z)
#self.y=0

#result.x += self.z * (xz + sin_y)
#sin_y=0
scoreboard players operation #feature.swing.temp ckenja.ghook = #feature.swing.xz ckenja.ghook
scoreboard players operation #feature.swing.temp ckenja.ghook *= #feature.swing.motion.z ckenja.ghook
scoreboard players operation #feature.swing.temp ckenja.ghook /= #10000 ckenja.ghook
scoreboard players operation #feature.swing.result.x ckenja.ghook += #feature.swing.temp ckenja.ghook

#result.y += self.x * (xy + sin_z)
#xy=0
scoreboard players operation #feature.swing.temp ckenja.ghook = #feature.swing.sin_z ckenja.ghook
scoreboard players operation #feature.swing.temp ckenja.ghook *= #feature.swing.motion.x ckenja.ghook
scoreboard players operation #feature.swing.temp ckenja.ghook /= #10000 ckenja.ghook
#ここだけ+=じゃなくて=
scoreboard players operation #feature.swing.result.y ckenja.ghook = #feature.swing.temp ckenja.ghook

#result.y += self.z * (yz - sin_x)
#yz=0
scoreboard players set #feature.swing.temp ckenja.ghook 0
scoreboard players operation #feature.swing.temp ckenja.ghook -= #feature.swing.sin_x ckenja.ghook
scoreboard players operation #feature.swing.temp ckenja.ghook *= #feature.swing.motion.z ckenja.ghook
scoreboard players operation #feature.swing.temp ckenja.ghook /= #10000 ckenja.ghook
scoreboard players operation #feature.swing.result.y ckenja.ghook += #feature.swing.temp ckenja.ghook

#result.z += self.x * (xz - sin_y)
#sin_y=0
scoreboard players operation #feature.swing.temp ckenja.ghook = #feature.swing.xz ckenja.ghook
scoreboard players operation #feature.swing.temp ckenja.ghook *= #feature.swing.motion.x ckenja.ghook
scoreboard players operation #feature.swing.temp ckenja.ghook /= #10000 ckenja.ghook
scoreboard players operation #feature.swing.result.z ckenja.ghook += #feature.swing.temp ckenja.ghook

#result.z += self.y * (yz + sin_x)
#self.y=0

scoreboard players operation #marker.merge.x ckenja.ghook += #feature.swing.result.x ckenja.ghook
scoreboard players operation #marker.merge.y ckenja.ghook += #feature.swing.result.y ckenja.ghook
scoreboard players operation #marker.merge.z ckenja.ghook += #feature.swing.result.z ckenja.ghook

#噴射演出
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[0] double 0.0001 run scoreboard players get #marker.merge.x ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[1] double 0.0001 run scoreboard players get #marker.merge.y ckenja.ghook
    execute store result storage ckenja.ghook.__temp__: marker.merge.Pos[2] double 0.0001 run scoreboard players get #marker.merge.z ckenja.ghook
    data modify entity @s Pos set from storage ckenja.ghook.__temp__: marker.merge.Pos
    execute facing entity @s feet run particle cloud ~ ~0.6 ~ ^ ^ ^-2500000 0.0000001 0 normal
