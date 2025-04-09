# do_hostile_spawn.mcfunction

# Sélectionner des emplacements aléatoires autour des joueurs
execute as @a at @s run summon area_effect_cloud ~15 ~ ~15 {Duration:1,Tags:["hostile_spawn"]}
execute as @a at @s run summon area_effect_cloud ~-15 ~ ~15 {Duration:1,Tags:["hostile_spawn"]}
execute as @a at @s run summon area_effect_cloud ~15 ~ ~-15 {Duration:1,Tags:["hostile_spawn"]}
execute as @a at @s run summon area_effect_cloud ~-15 ~ ~-15 {Duration:1,Tags:["hostile_spawn"]}
execute as @a at @s run summon area_effect_cloud ~20 ~ ~ {Duration:1,Tags:["hostile_spawn"]}

# Pour chaque marqueur, vérifier la lumière et faire apparaître un monstre si assez sombre
execute at @e[type=area_effect_cloud,tag=hostile_spawn,limit=5,sort=random] if predicate godlyalignement:is_dark run function godlyalignement:vie_mort/spawn_random_hostile

# Nettoyage
kill @e[type=area_effect_cloud,tag=hostile_spawn]