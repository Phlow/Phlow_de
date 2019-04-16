---
title: "zip & unzip: Dateien und Ordner komprimieren und entpacken"
categories : "Ordner und Dateien"
description : 'Mit den beiden
Kommandos `zip` und `unzip` komprimierst und entpackst Du Dateien im
*zip*-Format.'
slug            : zip-unzip
---
Mit den beiden Kommandos `zip` und `unzip` komprimierst und entpackst Du
Dateien im *zip*-Format. Der Befehl erlaubt das setzen von Passwörtern
und vielem mehr. Wie `zip` und `unzip` erkläre ich Dir im Folgenden.
<!-- readmore -->

# Dateien/Verzeichnisse komprimieren mit zip

Der Terminal-Befehl für die Kompression von Daten lautet `zip`. Um Daten
in einem Ordner zu komprimieren nutzt Du den Parameter `-r`. Der
folgende Befehl komprimiert die Daten als *archiv.zip* und packt dazu
den *ordner\_der\_komprimiert\_werden\_soll*.

    $ zip -r archiv.zip ordner_der_komprimiert_werden_soll

# zip: Dateien mit Passwort komprimieren

Um einzelne Dateien **mit einem Passwort zu komprimieren**, nutzt Du den
Parameter `-e`. Um einen ganzen Ordner mit einem Passwort zu
komprimieren, musst Du den Befehl mit einem *r* zu `-er` ergänzen.

    $ zip -er archiv.zip ordner_der_komprimiert_werden_soll

# Unsichtbare Dateien wie *.DS\_Store* ausschließen

Willst Du ein Archiv packen, willst Du sicherlich nicht Müll-Dateien wie
*.DS\_Store* oder ähnliche versteckte Dateien die mit einem Punkt
beginnen mitverpacken.

Um solche Dateien auszuschließen ergänzt Du das Kommando um die Option
`-X`.

    $ zip -er -X archiv.zip ordner_der_komprimiert_werden_soll

# Dateien entpacken

Ein Archiv entpackst Du einfach mit unzip:

    $ unzip archivename.zip
