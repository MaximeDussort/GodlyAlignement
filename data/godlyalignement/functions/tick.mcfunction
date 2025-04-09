# Incrémenter tous les timers ensemble
scoreboard players add %timer timer 1
scoreboard players add %passive_spawn_timer timer 1
scoreboard players add %hostile_spawn_timer timer 1

# Vérification du temps actuel (1 seule fois)
execute store result score %current_time timer run time query daytime

# Ordre-Chaos (n'exécuter qu'une fois si nécessaire)
execute if score #global Ordre_Chaos matches ..-75 run function godlyalignement:ordre_chaos/tick_order
execute if score #global Ordre_Chaos matches 75.. if score %timer timer matches 20.. run function godlyalignement:ordre_chaos/random_positive_effect

# Soleil-Lune (optimisé)
execute if score #global Soleil_Lune matches 75.. if score %current_time timer matches 0..12000 run function godlyalignement:soleil_lune/tick_sun
execute if score #global Soleil_Lune matches ..-75 if score %current_time timer matches 12001..24000 run function godlyalignement:soleil_lune/tick_moon

# Vie-Mort (optimisé)
execute if score #global Vie_Mort matches ..-75 if score %passive_spawn_timer timer matches 300.. run function godlyalignement:vie_mort/tick_life
execute if score #global Vie_Mort matches 75.. if score %hostile_spawn_timer timer matches 400.. run function godlyalignement:vie_mort/tick_death

# Réinitialisation des timers
execute if score %timer timer matches 20.. run scoreboard players set %timer timer 0
execute if score %passive_spawn_timer timer matches 300.. run scoreboard players set %passive_spawn_timer timer 0
execute if score %hostile_spawn_timer timer matches 400.. run scoreboard players set %hostile_spawn_timer timer 0