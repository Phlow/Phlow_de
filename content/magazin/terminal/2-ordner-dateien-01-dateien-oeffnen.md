---
subtitle        : "Terminal"
chapter         : 2
title           : "Dateien und Verzeichnisse öffnen"
categories      : "2. Ordner und Dateien"
slug            : dateien-oeffnen
---
Mit dem Kommando `open` öffnet man Dateien direkt über das Terminal in der dazugehörigen Anwendung. So funktioniert das Kommando:
<!--more-->

Wenn Du eine Datei mit der Standardanwendung öffnen möchtest, die diesem
Dateityp auf Deinem Mac zugeordnet ist, benutzt Du einfach `open` plus
den Dateinamen.

    $ open datei.txt

Du kannst eine Datei über den Dateipfad auch in anderen »fernen« Verzeichnissen öffnen.

## Das Verzeichnis direkt im Finder öffnen

Befindest Du Dich in einem Verzeichnis, dass Du gerne im Finder öffnen willst, dann tippst Du einfach…

    $ open .

…und Finder öffnet das aktuelle Verzeichnis.

## Öffnen mehrerer Dateien

Angenommen, Du hast mehrere Dateien auf der Suche auf Deiner Festplatte
gefunden. Um alle Dateien gleichzeitig zu öffnen, tippst Du hinter das
`open`-Komando einfach mehrere Dateinamen. Zum Beispiel so:

    $ open datei-1 datei-2 datei-3

## Auswahl der Anwendung

Nicht immer will man die Standard-Anwendung nutzen. Um das Programm zu
bestimmen, mit welchem `open` die Datei öffnen soll, steht ein Flag zur
Verfügung. Das ist `-a` gefolgt vom Programmnamen. Das funktioniert mit
jeder auf Deinem Mac installierten Anwendung, die sich im Ordner
**Programme** befindet.

    $ open -a appName Dateiname

Das könnte dann in einem konkreten Beispiel so aussehen:

    $ open -a "Sublime Text" README.md
