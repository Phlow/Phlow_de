---
title: "Paketmanager: Programme und Befehle mit Homebrew installieren"
categories : "Neue Kommandos für das Terminal"
description : 'Homebrew
vereinfacht die Installation von freier Software auf Deinem Mac. So
installierst Du Homebrew.'
slug            : homebrew
---
Homebrew vereinfacht die Installation von freier Software auf Deinem
Mac. Homebrew ist *»der fehlende Paketmanager für macOS«* und hilft bei
der Paketverwaltung der installierten Programme.

# Homebrew installieren

Um [Homebrew](https://brew.sh/index_de.html) zu installieren, öffnest Du
einfach Dein Terminal und kopierst den unteren Befehl in das Terminal.
Nach einem Druck auf die Eingabetaste installiert sich Homebrew von
alleine. Mehr Informationen findest Du in der [Homebrew
Anleitung](https://docs.brew.sh/Installation.html).

    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Installierte Pakete mit Homebrew pflegen

## Veraltete Pakete auflisten

Alte Versionen spürst Du mit…

    $ brew outdated

…auf.

## Aktualisieren: Alle Pakete in einem Rutsch aktualisieren

Anschließend genügt `brew upgrade` um sämtliche Pakete zu aktualisieren.
Besser ist es jedoch auch brew zuvor zu aktualisieren. Dazu kombinierst
Du einfach beide Befehle:

    $ brew update && brew upgrade

## Aufräumen: Alte installierte Pakete löschen

Einzelne Pakete löschst Du über `brew cleanup <formula>`. Um in einem
Rutsch alle alten Versionen zu löschen und aufzuräumen, tippst Du den
folgenden Befehl ins Terminal:

    $ brew cleanup
