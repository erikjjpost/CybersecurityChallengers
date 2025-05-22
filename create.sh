#!/bin/bash

# Directory naam
REPO_NAME="prompt_bibliotheek"

# Maak de hoofdmap aan
mkdir -p $REPO_NAME
cd $REPO_NAME

# Maak de hoofdmappen en submappen aan
mkdir -p Technische_Ondersteuning/Debugging
mkdir -p Technische_Ondersteuning/Documentatie
mkdir -p Technische_Ondersteuning/Code_Reviews

mkdir -p Content_Creatie/Blogs
mkdir -p Content_Creatie/Social_Media
mkdir -p Content_Creatie/Marketing

mkdir -p Data_Analyse/Data_Cleaning
mkdir -p Data_Analyse/Visualisaties
mkdir -p Data_Analyse/Rapporten

mkdir -p Algemene_Communicatie/E-mails
mkdir -p Algemene_Communicatie/Presentaties
mkdir -p Algemene_Communicatie/Samenwerking

mkdir -p Onderwijs_en_Training/Lesplannen
mkdir -p Onderwijs_en_Training/Oefeningen
mkdir -p Onderwijs_en_Training/Feedback

mkdir -p Projectbeheer/Planning
mkdir -p Projectbeheer/Risicoanalyse
mkdir -p Projectbeheer/Verslaglegging

mkdir -p Persoonlijke_Productiviteit/Doelenstelling
mkdir -p Persoonlijke_Productiviteit/Tijdsbeheer
mkdir -p Persoonlijke_Productiviteit/Reflectie

mkdir -p Creatief_Schrijven/Verhalen
mkdir -p Creatief_Schrijven/Gedichten
mkdir -p Creatief_Schrijven/Scenario_s

# Voeg een README.md bestand toe in elke submap
for dir in $(find . -type d); do
    echo "# ${dir#./}" > $dir/README.md
done

# Initialiseer een Git repository
git init

# Voeg alle bestanden toe
git add .

# Commit de wijzigingen
git commit -m "Initial commit: directory structure for prompt library"

# Voeg de remote repository toe (vervang <your-repo-url> met de URL van je GitHub repository)
git remote add origin git@github.com:erikjjpost/CybersecurityChallengers.git 

# Push de wijzigingen naar de remote repository
git push -u origin master

echo "Directory structure created and pushed to GitHub."

