
# Sélectionner des positions optimisées (avec précision de l'altitude)
summon area_effect_cloud ~15 ~ ~15 {Duration:2,Tags:["hostile_spawn"]}
summon area_effect_cloud ~-15 ~ ~15 {Duration:2,Tags:["hostile_spawn"]}
summon area_effect_cloud ~15 ~ ~-15 {Duration:2,Tags:["hostile_spawn"]}
summon area_effect_cloud ~-15 ~ ~-15 {Duration:2,Tags:["hostile_spawn"]}

# Adapter l'altitude des points de spawn
execute as @e[type=area_effect_cloud,tag=hostile_spawn] at @s run tp @s ~ ~-5 ~
execute as @e[type=area_effect_cloud,tag=hostile_spawn] at @s run function godlyalignement:system/find_valid_y

# Ne faire apparaître qu'un nombre limité de monstres (2 maximum)
execute at @e[type=area_effect_cloud,tag=hostile_spawn,limit=2,sort=random] if predicate godlyalignement:is_dark run function godlyalignement:vie_mort/spawn_random_hostile