---
subtitle        : "Mac einstellen per Terminal"
title           : Versteckte Ordner & Dateien mit Finder anzeigen
chapter         : 9
categories      : Verschiedenes
slug            : versteckte-dateien-anzeigen
---
Über das Terminal kannst Du zahlreiche Einstellungen Deines Macs
justieren. Dieser Tipp zeigt, wie Du Deinem Finder befiehlst versteckte
Dateien, wie z.B. die *.htaccess*-Datei anzuzeigen.
<!-- readmore -->

Damit Finder alle versteckten Dateien und Ordner anzeigt, gibt man über
das Terminal den folgenden Befehl ein.

    $ defaults write com.apple.finder AppleShowAllFiles TRUE

Danach musst Du den Finder neu starten, damit die Änderungen aktiv
werden:

    $ killall Finder

Um den Vorgang rückgängig zu machen, nutzt Du den folgenden Befehl und
startest erneut den Finder mit `killall Finder`.

    $ defaults write com.apple.finder AppleShowAllFiles FALSE
