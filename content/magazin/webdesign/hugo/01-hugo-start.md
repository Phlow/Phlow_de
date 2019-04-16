---
subtitle     : "Static Website Generator"
title        : "Hugo starten – Die Terminal Kommandos"
categories   : hugo
slug            : hugo-schnellstart
---
## Die wichtigsten Kommandos für das Terminal

`hugo new site ORDNERNAME`
: Legt ein neues Hugo-Projekt an

`hugo new theme [name]`
: Legt ein fast leeres neues Theme an

`hugo server`
: Startet den Hugo-Live-Server für die Entwicklung

`hugo config`
: Listet alle gesetzten Konfigurationsparameter auf

`hugo -t themename`
: Startet Hugo mit dem Theme _themename_

In der Dokumentation findest Du die Übersicht 
[Aller Befehle der Hugo CLI](https://gohugo.io/getting-started/usage/).

## Struktur eines Hugo-Projektes

    .
    ├── archetypes
    ├── assets
    ├── config
    ├── content
    ├── data
    ├── layouts
    ├── static
    └── themes

archetypes
: Vorlagen für neue Beiträge, die Du mit `hugo new` kreieren kannst.

assets
: Beinhaltet Dateien, die Hugo verarbeiten soll, z.B. *.scss*, *.postcss*,…

config
: Ort für die Konfigurationsdatei(en)

content
: Ordner für alle Inhalte.

data
: Hugo verarbeitet auf Wunsch Daten, die in Webseiten eingebunden werden sollen.

layouts
: Vorlagen für Deine Webseiten.

static
: In diesen Ordner gehören Bilder, Javascripte, Fonts, Mediendateien,…

