---
name: Notifications en arrière-plan
description: Contrainte de fiabilité des notifications Web lorsque l’application n’est pas ouverte.
---

La stratégie Web Notifications peut prévenir l’utilisateur hors onglet uniquement si le navigateur autorise un service worker actif et, pour les vérifications planifiées, le supporte en arrière-plan (souvent après installation de la PWA). Une simple minuterie JavaScript ne suffit pas.

**Why:** Une page fermée n’exécute plus son JavaScript et le service worker ne peut pas lire le localStorage de la page. Les données nécessaires doivent donc être transmises au worker dans un stockage partagé.

**How to apply:** Pour toute évolution des alertes hors ligne, conserver une synchronisation du véhicule actif vers IndexedDB du service worker et une clé de livraison stable par véhicule, alerte et seuil. Prévoir un mécanisme push serveur si une couverture garantie sur tous les appareils devient nécessaire.