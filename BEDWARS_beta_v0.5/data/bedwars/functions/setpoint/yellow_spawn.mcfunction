#Guizhi

execute unless score playing num matches 1 run kill @e[tag=spawn,team=yellow]
execute unless score playing num matches 1 run summon armor_stand ~ ~1 ~ {Tags:["bedwars","spawn"],Invisible:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"重生點","color":"yellow"}',CustomNameVisible:1b}
execute unless score playing num matches 1 positioned ~ ~1 ~ run team join yellow @e[tag=spawn,sort=nearest,limit=1]
execute unless score playing num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 設置了黃隊玩家重生點！","color":"white"}]
execute unless score playing num matches 1 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
