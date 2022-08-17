#Guizhi

# 爆炸
summon marker ~ ~ ~ {Tags:["bedwars","fireball"]}

# 移除
execute store result score @s Tmp run data get entity @s PortalCooldown 1
execute if score @s Tmp matches ..0 run kill @s
