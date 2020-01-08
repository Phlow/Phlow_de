---
title           :  "screencapture: Screenshots per Terminal"
chapter         : 5
categories      : "Bildbearbeitung"
description     : 'Der Befehl
`screencapture` erlaubt Screenshots per Terminal. Zeitgesteuerte
Screenshots und Bildschirmfotos ohne oder mit Schatten sind kein
Problem.'
slug            : screencapture-screenshots
---
Der Befehl `screencapture` erlaubt Screenshots per Terminal.
Zeitgesteuerte Screenshots und Bildschirmfotos ohne oder mit Schatten
sind kein Problem.
<!--more-->

Um einen Screenshot über das Terminal zu machen, tippst Du einfach den
Befehl `screencapture` plus einen Dateinamen samt Dateiendung in das
Terminal. Die Screenshot-Datei speichert der Computer im aktuellen
Verzeichnis.

    $ screencapture test.jpg

Willst Du den Screenshot an einem anderen Ort ablegen, z.B. auf Deinem
Desktop, dann definierst Du einfach den Pfad und stellst ihn dem
Dateinahmen voran. Im folgenden Beispiel steht die Tilde `~` für Dein
Nutzerverzeichnis. Bei mir ist das z.B. **/Users/moritz/** und der
Screenshot landet dann in **/Users/moritz/Desktop**.

    screencapture ~/Desktop/screenshot.jpg

> **Tip**
> 
> Der Befehl tippt sich ein wenig lang. Weil ich faul bin, habe ich mir
> für `screencapture` ein Alias in meinem **.bash\_profile** angelegt.
> Mehr dazu im Kapitel *Terminal anpassen*.

# Screenshot in die Zwischenablage kopieren

Um den Screenshot in der Zwischenablage zu speichern, nutzt Du den
Parameter `-c`. Dann brauchst Du auch keinen Dateipfad zu definieren.

    $ screencapture -c

# Screenshots zeitgesteuert erstellen

Eines der besseren Features des Screencapture-Dienstprogramms ist, dass
es Dir erlaubt, Screenshots nach einer definierten Anzahl von Sekunden
zu machen. Das ist nützlich, wenn Du z.B. eine App oder eine Situation
auf dem Bildschirm erst aufrufen musst, um z.B. Warnfelder, Menüs,
Schaltflächenaktionen oder so zu erfassen.

    $ screencapture -T 10 timedshot.jpg

Nach dem Parameter `-T` muss eine Zahl für die Sekunden folgen, die das
Programm warten soll, bis es Deinen Screenshot erstellt. Beim obigen
Beispiel wartet screencapture 10 Sekunden.

# Screenshots ohne Schatten

Mit der Option `o` vermeidet man den beigefügten Schatten für
Bildschirmfotos.

    $ screencapture -o vergleichen-1.png

> **Tip**
> 
> Du kannst den Schatten auch für die Bildschirmfotos per
> Tastenkombination ausschalten. Dazu öffnest Du das Terminal und tippst
> zuerst `defaults write com.apple.screencapture disable-shadow -bool
> true`. Dann musst Du den System UI Server mit `killall SystemUIServer`
> neustarten.
