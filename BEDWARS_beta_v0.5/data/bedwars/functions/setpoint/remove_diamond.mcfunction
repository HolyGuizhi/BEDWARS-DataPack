#Guizhi

execute unless score playing num matches 1 positioned ~ ~ ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=diamond_block]
execute unless score playing num matches 1 positioned ~ ~2 ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=diamond]
execute unless score playing num matches 1 positioned ~ ~2.3 ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=diamond_tier]
execute unless score playing num matches 1 run playsound entity.armor_stand.break ambient @a ~ ~ ~
