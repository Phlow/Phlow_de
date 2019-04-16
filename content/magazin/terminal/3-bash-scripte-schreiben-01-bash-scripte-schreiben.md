---
title: "Stapelverarbeitung: Die Magie der Bash/Shell-Skripte"
categories : "Bash Scripte schreiben"
description : 'Soll das Terminal
eine Kette von Befehlen nacheinander abarbeiten, nutzt man die Magie der
**Bash-Datei** auch Shell-Script genannt.'
slug            : bash-scripte-schreiben
---
Soll das Terminal eine Kette von Befehlen nacheinander abarbeiten, nutzt
man die Magie der **Bash-Datei** auch Shell-Script genannt. Die
Bash-Datei ist eine einfache Textdatei ohne Dateiendung, in welcher
zahlreiche Befehle, For-Schleifen und Abfragen gespeichert werden. Eine
Bash-Datei kann über Abfragen mit dem Nutzer interagieren, um z.B.
Variablen entgegenzunehmen oder Entscheidungen über eine
Ja-Oder-Nein-Abfrage abzurufen. Dank der Interaktion können Skripte
somit mehreren Zwecken dienen.
<!-- readmore -->

# Shell? Shell-Skript? Bash-Skript?

Ein bisschen Theorie zum Anfang, um ein wenig für Ordnung zu sorgen.
Also: In der Informatik bezeichnet man als Shell die Software, die den
Benutzer mit dem Computer verbindet. Die Shell ermöglicht z.B. sich über
das System oder Dateien zu informieren oder das System zu bedienen. Die
Shell ist in der Regel ein Teil des Betriebssystems. Es gibt zwei Arten
von Shells:

1.  Kommando-orientierte Shell › z.B. bei OS X das Terminal

2.  Shell mit grafischer Bedienungsoberfläche › z.B. bei OS X der Finder

Das Terminal ist eine Kommando-orientierte Shell, weil wir hier
Kommandos direkt eingeben, anstelle mit der Maus Buttons zu klicken und
in Felder Informationen einzutragen. Bei den Kommando-orientierten
Shells gibt es auch wiederum zahlreiche verschiedene: Bourne shell, Bash
(Unix shell), Z shell und so weiter. Als Standard auf Mac-Rechnern
öffnet sich mit dem Terminal die *bash shell*, oft auch nur *bash*
genannt.

# Und was bedeutet stdin, stdout und stderr?

Es drei verschiedene Arten Inhalte ein- und auszugeben, genannt
Standard-Datenströme. Die Kurzform für Standard lautet *std*. Daraus
ergeben sich dann die drei Datenströme ***std**in*, ***std**out* und
***std**err*.

  - stdin – Standard*eingabe*  
    Über die Standardeingabe können Daten in Programme eingelesen
    werden. Normalerweise ist die Standardeingabe mit der Tastatur
    verbunden, d. h. Programme empfangen die Benutzereingaben über die
    Standardeingabe.

  - stdout – Standard*ausgabe*  
    Über die Standardausgabe können Programme Daten ausgeben. Dies
    geschieht in der Regel über den Monitor, d.h. Programme senden
    Ausgabetexte über die Standardausgabe an den Benutzer.

  - stderr – Standard*fehlerausgabe*  
    Die Standardfehlerausgabe ist ein zweiter Ausgabedatenstrom, der
    Fehler- und Statusmeldungen ausgibt. In der Regel ebenfalls über den
    Monitor. Die Standardfehlerausgabe kann auch getrennt von der
    Standardausgabe umgeleitet werden, so dass Fehlermeldungen nicht mit
    den ausgegebenen Daten vermischt werden.

Daraus ergibt sich, dass man Standard-Datenströme wie folgt leiten kann:

  - umleiten des *stdout*-Datenstromes in eine Datei

  - umleiten des *stderr*-Datenstromes in eine Datei

  - umleiten von *stdout* zu einem *stderr*-Datenstrom

  - umleiten von *stderr* zu einem *stdout*-Datenstrom

  - umleiten mit *stderr* und *stdout* in eine Datei

  - umleiten mit *stderr* und *stdout* zum *stdout*-Datenstrom

  - umleiten mit *stderr* und *stdout* zum *stderr*-Datenstrom

Zwei Beispiele: In dem folgenden Beispiel wird die Ausgabe eines
Programms – hier `ls` – in eine Datei geschrieben. Als Ergebnis schreibt
der list-Befehl alle Dateien des aktuellen Verzeichnisses in die Datei
*ordnerinhalt.txt*

    $ ls > ordnerinhalt.txt

Im nächsten Beispiel wird der Datenstrom von *stderr* eines Programmes –
hier grep – in eine Datei geschrieben.

    $ grep da * 2> grep-errors.txt

# Aufbau eines Bash-Skriptes

Denk an ein Drehbuch bzw. Skript für ein Theaterspiel oder einen Film.
Das Drehbuch sagt den Schauspielern, was sie sagen und tun sollen. Ein
Skript für einen Computer teilt dem Computer mit, was er ausführen oder
ausdrucken soll. Im Zusammenhang mit Bash-Skripten befehlen wir dem
Computer, Kommandos auszuführen.

Ein Bash-Skript ist hierbei eine einfache Textdatei, die eine Reihe von
Befehlen enthält. Diese Befehle sind eine Mischung aus Befehlen, die wir
normalerweise auf der Kommandozeile (wie z.B. `ls` oder `cp`) eingeben
würden, und Befehle, die wir auf die Befehlszeile schreiben könnten,
aber im Allgemeinen nicht schreiben, weil Sie zu kompliziert sind.

Also: Alles, was Du normalerweise im Terminal auf der Befehlszeile
ausführen kannst, kannst Du auch in ein Bash-Skript schreiben. Führt
der Computer das Bash-Skript aus, macht er genau das Gleiche. Ebenso
kann alles, was Sie in einem Bash-Skript läuft auch normal im Terminal
auf der Kommandozeile ausgeführt werden. Bash-Skripte kommen also immer
dann zum Einsatz, wenn man nicht mühselig eine Kette an Befehlen
eintippen will, sondern wenn man sich das Leben vereinfachen möchte.

Damit jeder ein Bash-Skript als solches identifizieren kann, nutzt man
die Dateiendung *.sh*, z.B. so *meinbashscript.sh*.

# Wie startet man ein Bash-Script?

Ein Bash-Script auszuführen ist ziemlich einfach. Bevor Du jedoch das
Skript ausführen kannst, muss es über die Ausführungsberechtigung
verfügen. Aus Sicherheitsgründen bestehen die Ausführungsrechte in der
Regel erst einmal nicht. Ist dem so, erhält man beim Aufruf eines
Bash-Scriptes eine Fehlermeldung, und der Vorgang bricht mit `-bash:
./meinbashscript.sh: Permission denied` ab.

Damit Dein Computer ein Bash-Script ausführt, musst Du erst einmal dem
Skript dafür die Rechte geben. Das geschieht mit `chmod 755`:

    $ chmod 755 meinbashscript.sh

Befindest Du Dich im gleichen Ordner wie das Bash-Script, kannst Du es
jetzt mit `./meinbashscript.sh` starten. Wichtig ist das vorangestellte
`./`. Der Punkt sagt dem Terminal, dass es das Bash-Script im aktuellen
Ordner suchen und dann starten soll. Wenn Du nur den Namen auf der
Befehlszeile eingibst, versucht die Bash Shell, das Skript in einer
Reihe von Verzeichnissen zu finden, die in einer Variablen namens $PATH
gespeichert sind.

XXX

# Shebang (\#\!)

    $ #!/bin/bash

Die erste Zeile eines Skripte startet mit einer Zeichenfolge, die man
als *Shebang* bezeichnet. Hierbei handelt es sich um ein
Hash-Ausrufezeichen (\#\!), auf welches der Pfad zum Interpreter (oder
Programm) folgt, mit dem der Rest der Zeilen in der Textdatei ausgeführt
oder interpretiert werden soll. Für Bash-Skripte wird es der Weg zur
Bash sein, aber es könnte sich auch um eine andere Art von Skript
handeln, welches einen anderen Interpreter erfordert.

Die Formatierung ist hier sehr wichtig. Das Shebang muss in der ersten
Zeile der Datei stehen und darf auch keine Leerzeichen vor dem `#` oder
zwischen den \! und dem Pfad zum Interpreter haben.

# Ein kleines Beispiel zur Verdeutlichung

XXX

Um eine Bash-ScriptDatei auszuführen…

1.  …springst DU in das Verzeichnis, in welcher die Datei liegt,…

2.  …tippst vor dem Skriptdateinamen noch `./` ein und…

3.  …drückst die Eingabetaste.

<!-- end list -->

    #!/bin/bash
