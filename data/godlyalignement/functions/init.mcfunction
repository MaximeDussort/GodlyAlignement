# init.mcfunction optimisé

# Création des objectifs pour les jauges
scoreboard objectives add Soleil_Lune dummy "Jauge Soleil vs Lune"
scoreboard objectives add Vie_Mort dummy "Jauge Vie vs Mort"
scoreboard objectives add Ordre_Chaos dummy "Jauge Ordre vs Chaos"
scoreboard objectives add random dummy "randint"
scoreboard objectives add timer dummy "timer"
scoreboard objectives add temp_check dummy "temp_check"

# Initialisation des scores
scoreboard players set #global Soleil_Lune 0
scoreboard players set #global Vie_Mort 0
scoreboard players set #global Ordre_Chaos 0
scoreboard players set %timer timer 0
scoreboard players set %passive_spawn_timer timer 0
scoreboard players set %hostile_spawn_timer timer 0
scoreboard players set %day_counter timer 0
scoreboard players set %night_counter timer 0
scoreboard players set %can_spawn random 0
scoreboard players set %passive_count random 5
scoreboard players set %hostile_count random 6
scoreboard players set #salt random 1103515245

# Préparer le cache aléatoire
function godlyalignement:random/update_random_cache

tellraw @a {"text":"Alignement divin activé !","color":"#f0ed55"}