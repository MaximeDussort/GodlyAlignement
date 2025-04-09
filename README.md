# 🌟 GodlyAlignement Datapack

Le datapack **GodlyAlignement** introduit un système de jauges influençant le gameplay en fonction de trois axes principaux : **☀️ Soleil vs 🌙 Lune**, **💖 Vie vs ☠️ Mort**, et **⚖️ Ordre vs 🌀 Chaos**. Ces jauges modifient l'environnement et les interactions en fonction de leurs valeurs.

## ✨ Fonctionnalités principales

### ☀️ 1. **Soleil vs Lune** 🌙
- Influence la durée des cycles jour/nuit.
- Lorsque la jauge est élevée :
  - 🌞 Les journées deviennent plus courtes.
- Lorsque la jauge est basse :
  - 🌌 Les nuits deviennent plus courtes.
- ⚪ État neutre : Aucun changement notable.

### 💖 2. **Vie vs Mort** ☠️
- Contrôle l'apparition des créatures passives et hostiles.
- Lorsque la jauge est élevée :
  - 👹 Les créatures hostiles apparaissent plus fréquemment.
- Lorsque la jauge est basse :
  - 🐑 Les créatures passives apparaissent plus fréquemment.
- ⚪ État neutre : Aucun changement notable.

### ⚖️ 3. **Ordre vs Chaos** 🌀
- Affecte les joueurs avec des effets positifs ou négatifs.
- Lorsque la jauge est élevée :
  - ✨ Des effets positifs aléatoires sont appliqués aux joueurs.
- Lorsque la jauge est basse :
  - 🛡️ Les joueurs sont immunisés contre les effets négatifs.
- ⚪ État neutre : Aucun changement notable.

## 🛠️ Installation

1. 📥 Téléchargez le datapack et placez-le dans le dossier `datapacks` de votre monde Minecraft.
2. ▶️ Lancez le monde et assurez-vous que le datapack est activé.
3. 🔄 Le datapack s'initialise automatiquement à son premier chargement.

## 🧾 Commandes principales

- **Initialisation** : Le datapack initialise automatiquement les objectifs nécessaires via la fonction `godlyalignement:init`.
- **Tick** : Les mises à jour régulières sont gérées par la fonction `godlyalignement:tick`.

## ⚙️ Configuration

Les jauges peuvent être ajustées manuellement via les commandes suivantes :
- `scoreboard players set #global Soleil_Lune <valeur>`
- `scoreboard players set #global Vie_Mort <valeur>`
- `scoreboard players set #global Ordre_Chaos <valeur>`

## 🧩 Compatibilité

- 🟢 **Version Minecraft** : 1.20.1

## 🙌 Crédits

Créé par **Maxoin**.