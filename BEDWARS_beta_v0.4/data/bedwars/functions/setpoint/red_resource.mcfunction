#Guizhi

execute unless score playing num matches 1 run kill @e[tag=resource,team=red]
execute unless score playing num matches 1 run summon armor_stand ~ ~1 ~ {Tags:["bedwars","resource"],Invisible:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"資源生成點","color":"red"}',CustomNameVisible:1b}
execute unless score playing num matches 1 positioned ~ ~1 ~ run team join red @e[tag=resource,sort=nearest,limit=1]
execute unless score playing num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 設置了紅隊玩家資源生成點！","color":"white"}]
execute unless score playing num matches 1 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
