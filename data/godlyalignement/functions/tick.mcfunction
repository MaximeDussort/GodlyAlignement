# Ordre-Chaos
execute if score #global Ordre_Chaos matches ..-75 as @a run function godlyalignement:ordre_chaos/tick_order
execute if score #global Ordre_Chaos matches 75.. as @a run function godlyalignement:ordre_chaos/tick_chaos

# Soleil-Lune
execute store result score %current_time timer run time query daytime
execute if score #global Soleil_Lune matches 75.. if score %current_time timer matches 0..12000 as @a run function godlyalignement:soleil_lune/tick_sun
execute if score #global Soleil_Lune matches ..-75 if score %current_time timer matches 12001..24000 as @a run function godlyalignement:soleil_lune/tick_moon

# Vie-Mort
# Compteur pour l'apparition des animaux (toutes les 15 secondes)
scoreboard players add %passive_spawn_timer timer 1
scoreboard players add %hostile_spawn_timer timer 1
execute if score #global Vie_Mort matches ..-75 if score %passive_spawn_timer timer matches 300.. as @a run function godlyalignement:vie_mort/tick_life
execute if score %passive_spawn_timer timer matches 300.. run scoreboard players set %passive_spawn_timer timer 0
execute if score #global Vie_Mort matches 75.. if score %hostile_spawn_timer timer matches 400.. as @a run function godlyalignement:vie_mort/tick_death
execute if score %hostile_spawn_timer timer matches 400.. run scoreboard players set %hostile_spawn_timer timer 0