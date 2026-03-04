# 💾 Motorola 68000 - Low-Level Security & Utility Library

Ce dépôt retrace mon apprentissage de l'assembleur m68k, de la logique binaire fondamentale à l'implémentation de mécanismes de sécurité logicielle.

## 📂 Structure du Projet

### [01. Apprentissage & Logique](./01-Exercises-and-Logic/)
* **Bases arithmétiques** : Précision étendue (`addx`), logique de retenue et rotations de bits.
* **Structures de contrôle** : Optimisation des boucles via `dbra` et gestion des sauts conditionnels.

### [02. Bibliothèque Utilitaire](./02-Utility-Library/)
* **Chaînes de caractères** : Calcul de longueur (`strlen`), comptage de types (espaces, minuscules, alphanumériques).
* **Conversion & Arithmétique** : Routines `atoui` (ASCII to Integer) et calcul de valeur absolue.
* **Modularité** : Utilisation de la pile (`movem`) pour la sauvegarde du contexte.

### [03. Application Finale : Calculatrice Sécurisée](./03-Secure-App-Calculatrice/)
* **Data Sanitization** : Filtrage strict des entrées non-numériques au niveau machine.
* **Prévention d'Overflow** : Contrôle des limites de capacité (16-bit signed) avant traitement.
* **Interface Système** : Intégration de ressources binaires externes via `incbin`.

---
## 🛡️ Focus Cybersécurité
Chaque routine a été développée avec un objectif de **Software Reliability** :
1. **Intégrité de la mémoire** : Gestion propre des registres d'adresses et de données.
2. **Résilience aux fautes** : Utilisation du registre d'état (`ccr`) pour la propagation d'erreurs système.

---
*Projet réalisé dans le cadre de la L2 Informatique - Module Architecture des Ordinateurs - Université Paris Cité.*
