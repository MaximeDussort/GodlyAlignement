# system/find_valid_y.mcfunction

# Chercher un bloc solide en dessous
execute unless block ~ ~-1 ~ #minecraft:valid_spawn unless block ~ ~-1 ~ minecraft:air unless block ~ ~-1 ~ minecraft:cave_air unless block ~ ~-1 ~ minecraft:void_air positioned ~ ~-1 ~ run function godlyalignement:system/find_valid_y

# Limiter la recherche pour éviter les boucles infinies (max 10 blocs)
scoreboard players add @s temp_check 1
execute if score @s temp_check matches 10.. run kill @s