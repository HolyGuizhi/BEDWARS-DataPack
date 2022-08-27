#Guizhi

summon creeper ~ -63 ~ {Fuse:0,Tags:["bedwars","tnt"],CustomName:'{"text":"TNT"}'}
tp @e[tag=tnt,limit=1] ~ ~ ~

execute positioned ~ ~ ~1 if block ~ ~ ~ #bedwars:ez_explo run function bedwars:play/item/tnt/explo_layer1
execute positioned ~ ~1.5 ~ if block ~ ~ ~ #bedwars:ez_explo run function bedwars:play/item/tnt/explo_layer1
execute positioned ~1 ~ ~ if block ~ ~ ~ #bedwars:ez_explo run function bedwars:play/item/tnt/explo_layer1
execute positioned ~ ~ ~-1 if block ~ ~ ~ #bedwars:ez_explo run function bedwars:play/item/tnt/explo_layer1
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #bedwars:ez_explo run function bedwars:play/item/tnt/explo_layer1
execute positioned ~-1 ~ ~ if block ~ ~ ~ #bedwars:ez_explo run function bedwars:play/item/tnt/explo_layer1

execute positioned ~ ~ ~1 if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.75chance run function bedwars:play/item/tnt/explo_layer1
execute positioned ~ ~1.5 ~ if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.75chance run function bedwars:play/item/tnt/explo_layer1
execute positioned ~1 ~ ~ if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.75chance run function bedwars:play/item/tnt/explo_layer1
execute positioned ~ ~ ~-1 if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.75chance run function bedwars:play/item/tnt/explo_layer1
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.75chance run function bedwars:play/item/tnt/explo_layer1
execute positioned ~-1 ~ ~ if block ~ ~ ~ #bedwars:md_explo if predicate bedwars:0.75chance run function bedwars:play/item/tnt/explo_layer1

execute positioned ~ ~ ~1 if block ~ ~ ~ #bedwars:hd_explo if predicate bedwars:0.5chance run function bedwars:play/item/tnt/explo_layer1
execute positioned ~ ~1.5 ~ if block ~ ~ ~ #bedwars:hd_explo if predicate bedwars:0.5chance run function bedwars:play/item/tnt/explo_layer1
execute positioned ~1 ~ ~ if block ~ ~ ~ #bedwars:hd_explo if predicate bedwars:0.5chance run function bedwars:play/item/tnt/explo_layer1
execute positioned ~ ~ ~-1 if block ~ ~ ~ #bedwars:hd_explo if predicate bedwars:0.5chance run function bedwars:play/item/tnt/explo_layer1
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #bedwars:hd_explo if predicate bedwars:0.5chance run function bedwars:play/item/tnt/explo_layer1
execute positioned ~-1 ~ ~ if block ~ ~ ~ #bedwars:hd_explo if predicate bedwars:0.5chance run function bedwars:play/item/tnt/explo_layer1

kill @s[type=tnt]
