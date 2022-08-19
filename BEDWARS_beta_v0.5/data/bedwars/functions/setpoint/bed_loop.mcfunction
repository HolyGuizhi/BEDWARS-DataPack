#Guizhi

scoreboard players add bedloop num 1

execute if block ~ ~ ~ blue_bed run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["bedwars","blue_bed","bed"]}
execute store success score @s Tmp if block ~ ~ ~ blue_bed run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 設置了藍隊床點！","color":"white"}]
execute if score @s Tmp matches 1 run scoreboard players set bedloop num 5000

execute if block ~ ~ ~ red_bed run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["bedwars","red_bed","bed"]}
execute store success score @s Tmp if block ~ ~ ~ red_bed run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 設置了紅隊床點！","color":"white"}]
execute if score @s Tmp matches 1 run scoreboard players set bedloop num 5000

execute if block ~ ~ ~ yellow_bed run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["bedwars","yellow_bed","bed"]}
execute store success score @s Tmp if block ~ ~ ~ yellow_bed run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 設置了黃隊床點！","color":"white"}]
execute if score @s Tmp matches 1 run scoreboard players set bedloop num 5000

execute if block ~ ~ ~ green_bed run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["bedwars","green_bed","bed"]}
execute store success score @s Tmp if block ~ ~ ~ green_bed run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 設置了綠隊床點！","color":"white"}]
execute if score @s Tmp matches 1 run scoreboard players set bedloop num 5000

scoreboard players reset @s Tmp
execute if score bedloop num matches 2000.. as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute if score bedloop num matches 2000.. run scoreboard players reset bedloop num
execute if score bedloop num matches ..1001 positioned ^ ^ ^0.01 run function bedwars:setpoint/bed_loop
