#Guizhi

# 找尋
execute if block ~ ~ ~ tnt run function bedwars:play/item/tnt/search/summon
execute unless block ~ ~ ~ tnt if entity @e[tag=tnt_searcher,distance=..10] positioned ~ ~ ~1 run function bedwars:play/item/tnt/search/pos_z
