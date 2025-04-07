# tp_flutter_api

# Réponses aux questions de vérification

## Pourquoi utiliser un factory constructor ?
- Pour transformer facilement des données JSON en objets Dart
- Pour avoir plus de contrôle sur la création d'objets
- Pour éviter la duplication de code lors de la création d'objets similaires

## Pourquoi utiliser notifyListeners() ?
- Pour informer les widgets que les données ont changé
- Pour déclencher la mise à jour automatique de l'interface utilisateur
- Pour rendre l'application réactive aux changements de données

## Que se passe-t-il si on oublie notifyListeners() ?
- L'interface ne se met pas à jour malgré les changements de données
- Les modifications restent invisibles pour l'utilisateur
- L'application semble figée ou non réactive

## Quelle est la responsabilité du ViewModel dans MVVM ?
- Faire le pont entre les données (Model) et l'interface (View)
- Gérer la logique métier et l'état de l'application
- Préparer les données pour l'affichage
- Réagir aux interactions de l'utilisateur