---
title:  Navigieren im Terminal:
categories : \[Ordner und Dateien\]
description : 'Dieses Kapitel
erklärt Dir wichtige Begriffe und Konzepte des Terminals und zeigt Dir,
wie Du mit Dateien und Ordnern umgehst.'
---
Befehle für Dateien und Ordner :description: Dieses Kapitel erklärt Dir
wichtige Begriffe und Konzepte des Terminals und zeigt Dir, wie Du mit
Dateien und Ordnern umgehst.

Um effektiv mit dem Terminal umzugehen, musst Du erst einmal ein paar
Konzepte verinnerlichen. Damit Du später einfach Programme aufrufen
kannst, Pfade für das Kopieren von Dateien lesen kannst und Dich
generell in der Kommandozeile zurecht findest. Dieses Kapitel erklärt
Dir in einfachen Schritten, wie das geht.

Dazu öffnest Du zuerst einmal das Terminal auf Deinem Mac. Am
schnellsten geht das, indem Du mit kbd:\[cmd + Leertaste\] Spotlight
öffnest.

![Spotlight auf dem Mac](../images/terminal-spotlight-1.png)

Jetzt tippst Du einfach die Buchstaben `ter` ein und in der Regel sucht
und zeigt Dir jetzt Spotlight die Terminal-App an. Starte das Terminal
jetzt mit der Eingabetaste.

![Spotlight auf dem Mac](../images/terminal-spotlight-2.png)

# Wo befinde ich mich im Terminal?

Hast Du das Terminal geöffnet, befindest Du Dich zuerst einmal immer in
Deinem Benutzerordner. Jederzeit kannst Du Dir den aktuellen Pfad mit
`pwd` anzeigen lassen. Bei mir sieht das Ergebnis dann so aus:

    $ pwd
    /Users/moritz

Bevor ich Dir den Befehl `cd` zum Wechseln von Verzeichnissen erkläre,
musst Du noch vier Zeichen verstehen, die ungemein wichtig für die
Navigation per Terminal sind. Das sind…

  - `.`  
    Der einzelne Punkt steht immer stellvertretend für das aktuelle
    Verzeichnis.

  - `..`  
    Zwei Punkte stehen stellvertretend für das Verzeichnis, dass eine
    Ebene höher liegt.

  - `~`  
    Die Tilde steht stellvertretend für Dein Benutzerverzeichnis. Bei
    mir ist das */Users/moritz*

  - `/`  
    Der Schrägstrich steht für das Wurzelverzeichnis, also das oberste
    Verzeichnis, das Hauptverzeichnis eines Datenträgers.

> **Tip**
> 
> Die Tilde, also \~, gibt man auf dem Mac mit der Tastenkombination
> kbd:\[Alt + n\] gefolgt von einmal anschließend Leertaste drücken.

# Navigieren mit cd – change directory

Um im Terminal in ein anderes Verzeichnis zu wechseln, nutzt man den
Befehl `cd`, was für *change directory* steht. Als erstes, tippst Du
jetzt einfach mal den folgenden Befehl ein:

    $ cd /

Anschließend tippst Du für die Orientierung `pwd` ins Terminal.

    $ pwd
    /

Mit `cd /` bist Du ins oberste Verzeichnis, das Wurzelverzeichnis auch
*root directory* gewechselt. Um schnell in Dein Benutzerverzeichnis
zurückzuwechseln, tippst Du einfach…

    $ cd ~

Anschließend kannst Du mit `pwd` erneut überprüfen, in welchem
Verzeichnis Du Dich befindest. Bei mir ist dass dann wieder, wie weiter
oben bereits geschrieben…

    $ pwd
    /Users/moritz

Im nächsten Schritt nutzen wir `..`. Wie oben geschrieben, steht das für
ein Verzeichnis über dem aktuellen. Der folgende Befehl bringt Dich ein
Verzeichnis rauf:

    $ cd ..

Gibst Du anschließend wieder `pwd` ein, so gibt das Terminal, bei mir
folgendes aus.

    $ pwd
    /Users

Jetzt wechselst Du noch einmal in Dein Benutzerverzeichnis mit

    $ cd ~

und dieses Mal verknüpfen wir zweimal `..` zu…

    $ cd ../../

Gibst Du jetzt `pwd` ein, sollte das Ergebnis so aussehen:

    $ pwd
    /

Dank zweimal `..` bist Du gleich zwei Verzeichnisse höher gewechselt.

# Inhalte von Verzeichnissen mit ls anzeigen

Um zu sehen, welche Ordner und Dateien in einem Verzeichnis liegen,
tippt man den Befehl `ls` ein. Das ist der *list*-Befehl. Probier ihn
einfach aus:

    $ ls

Bei mir sieht das Ergebnis aktuell so aus:

    Applications      home
    Library           installer.failurerequests
    Network           net
    System            opt
    Users             private
    Volumes           sbin
    bin               tmp
    cores             usr
    dev               var
    etc

# Ordner- und Datei-Aktionen

**Programme öffnet man aus dem Terminal über…**

    $ open -a "Sublime Text"

**Aktuellen Ordner in Finder öffnen**

    $ open .

**Verzeichnis mit Inhalt löschen**

    $ rm -rf verzeichnisname

**Versteckte Ordner & Dateien mit Terminal anzeigen**

Mit ls listet man die Dateien in einem Ordner auf. Um auch versteckte
Dateien anzeigen zu lassen, muss man den Parameter -all oder in der
Kurzvariante -a hinzufügen.

    $ ls -a
