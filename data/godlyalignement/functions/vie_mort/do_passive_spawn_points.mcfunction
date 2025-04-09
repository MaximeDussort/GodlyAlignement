# vie_mort/do_passive_spawn_points.mcfunction (nouvelle fonction)

# Créer moins de points de spawn mais mieux répartis
summon area_effect_cloud ~10 ~ ~10 {Duration:2,Tags:["passive_spawn"]}
summon area_effect_cloud ~-10 ~ ~10 {Duration:2,Tags:["passive_spawn"]}
summon area_effect_cloud ~10 ~ ~-10 {Duration:2,Tags:["passive_spawn"]}
summon area_effect_cloud ~-10 ~ ~-10 {Duration:2,Tags:["passive_spawn"]}

# Essayer de faire apparaître des animaux aux points sélectionnés (max 3)
execute at @e[type=area_effect_cloud,tag=passive_spawn,limit=3,sort=random] run function godlyalignement:vie_mort/spawn_random_passive