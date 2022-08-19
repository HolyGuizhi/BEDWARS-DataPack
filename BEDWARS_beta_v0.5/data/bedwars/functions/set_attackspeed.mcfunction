#Guizhi

# 0:攻速快(預設)  1:攻速慢
execute if score attack_speed num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 玩家的攻擊速度將設為","color":"white"},{"text":"快速","color":"gold"}]
execute if score attack_speed num matches 1 run scoreboard players set attack_speed num -1

execute if score attack_speed num matches 0 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 玩家的攻擊速度將設為","color":"white"},{"text":"慢速","color":"gold"}]
execute if score attack_speed num matches 0 run scoreboard players set attack_speed num 1

execute unless score attack_speed num matches 0.. run scoreboard players set attack_speed num 0
execute as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
