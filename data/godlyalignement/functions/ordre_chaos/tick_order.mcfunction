# ordre_chaos/tick_order.mcfunction optimisé

# Supprimer tous les effets négatifs en une seule commande
execute if score #global Ordre_Chaos matches ..-76 as @a run effect clear @s minecraft:poison
execute if score #global Ordre_Chaos matches ..-76 as @a run effect clear @s minecraft:wither

# Remplacer par une approche plus efficace avec des groupes d'effets
execute if score #global Ordre_Chaos matches ..-76 as @a run function godlyalignement:ordre_chaos/clear_negative_effects