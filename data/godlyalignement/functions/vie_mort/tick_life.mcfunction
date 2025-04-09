# Sélectionner un joueur aléatoire plutôt que tous les joueurs
tag @r add spawn_animals
execute at @a[tag=spawn_animals,limit=1] run function godlyalignement:vie_mort/do_passive_spawn_points
tag @a remove spawn_animals

# Jouer le son une seule fois pour tous
playsound minecraft:item.brush.brushing.generic master @a ~ ~ ~ 1 1 1