# Action à effectuer lorsque Vie_Mort est en dessous de -75
tellraw @s {"text":"La vie pullule dans nos contrées !","color":"#18e722", "hoverEvent":{"action":"show_text","value":"Les créatures passives apparaissent plus fréquemment."}}

# Ajoute le tag 'chaosed' à tous les joueurs (même ceux déconnectés)
tag @a add chaosed
# Donne une immunité temporaire aux joueurs avec le tag 'chaosed' (par exemple, Résistance)
execute as @a[tag=chaosed] run effect give @s resistance 10 255 true