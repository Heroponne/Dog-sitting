# README

Application de Dog-sitting

Comment tester l'appli :

- Lancer dans le terminal la commande rails db:seed

- Puis la commande rails console

- Afficher le(les) dogsitters d'un chien : Dog.find(id_du_chien).dogsitters

- Afficher la(les) promenades d'un chien : Dog.find(id_du_chien).strolls

- Afficher la ville d'un chien : Dog.find(id_du_chien).city

- Afficher la ville d'un dogsitter : Dogsitter.find(id_du_dogsitter).city

## Auteur

 ~ Orgeret Florence ~
