#Guizhi

execute unless score playing num matches 1 positioned ~ ~ ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=emerald_block]
execute unless score playing num matches 1 positioned ~ ~2 ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=emerald]
execute unless score playing num matches 1 positioned ~ ~2.3 ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=emerald_tier]
execute unless score playing num matches 1 run playsound entity.armor_stand.break ambient @a ~ ~ ~
