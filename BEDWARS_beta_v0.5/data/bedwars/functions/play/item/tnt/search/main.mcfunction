#Guizhi

# 核心
summon marker ~ ~ ~ {Tags:["bedwars","tnt_searcher"]}

# 找尋
execute if block ~ ~ ~ tnt run function bedwars:play/item/tnt/search/summon
execute unless block ~ ~ ~ tnt positioned ~1 ~ ~ run function bedwars:play/item/tnt/search/pos_x
execute unless block ~ ~ ~ tnt positioned ~-1 ~ ~ run function bedwars:play/item/tnt/search/neg_x
execute unless block ~ ~ ~ tnt positioned ~ ~1 ~ run function bedwars:play/item/tnt/search/pos_y
execute unless block ~ ~ ~ tnt positioned ~ ~-1 ~ run function bedwars:play/item/tnt/search/neg_y
execute unless block ~ ~ ~ tnt positioned ~ ~ ~1 run function bedwars:play/item/tnt/search/pos_z
execute unless block ~ ~ ~ tnt positioned ~ ~ ~-1 run function bedwars:play/item/tnt/search/neg_z
