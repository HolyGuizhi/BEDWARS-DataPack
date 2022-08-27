#Guizhi

setblock ~ ~ ~ air destroy

execute positioned ~ ~ ~1 if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~ if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~-1 if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~ if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
