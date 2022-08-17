#Guizhi

setblock ~ ~ ~ air destroy

execute positioned ~ ~ ~1 if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run function bedwars:play/item/tnt/explo_layer4
execute positioned ~ ~1 ~ if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run function bedwars:play/item/tnt/explo_layer4
execute positioned ~1 ~ ~ if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run function bedwars:play/item/tnt/explo_layer4
execute positioned ~ ~ ~-1 if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run function bedwars:play/item/tnt/explo_layer4
execute positioned ~ ~-1 ~ if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run function bedwars:play/item/tnt/explo_layer4
execute positioned ~-1 ~ ~ if block ~ ~ ~ #bedwars:ez_explo if predicate bedwars:0.25chance run function bedwars:play/item/tnt/explo_layer4

execute positioned ~ ~ ~1 if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~ if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~-1 if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~ if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.25chance run setblock ~ ~ ~ air destroy
