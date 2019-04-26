---
subtitle        : Konfiguration Deiner Umgebung
title           : Eigene Terminal Kommandos
chapter         : 3
categories      : "Bash Scripte schreiben"
description     : 'Dieses Kapitel
erklärt Dir, wie Du eigene Terminal-Kommandos erstellst und über Dein
eigenes `.bash_profile` zu jeder Zeit aufrufbar machst.'
slug            : eigene-terminal-kommandos
---
Dieses Kapitel erklärt Dir, wie Du eigene Terminal-Kommandos erstellst
und über Dein eigenes `.bash_profile` zu jeder Zeit aufrufbar machst.
<!-- readmore -->

Stellen wir zuerst sicher, dass Du in Deinem Benutzer-Hauptverzeichnis
bist:

    $ cd ~

Standard-Praxis ist es, Benutzer-Shell-Skripte in einem *bin*-Ordner in
Deinem Benutzerverzeichnis abzuspeichern. Mit `ls` überprüfst Du, ob es
den Ordner gibt. Wenn nicht, dann erstellen wir den Ordner mit…

    $ mkdir bin

Der Pfad zu diesem Ordner sollte jetzt so aussehen:
*/Users/**DEIN\_BENUTZERNAME**/bin*. Bei mir lautet der Pfad z.B.
*/Users/moritz/bin*.

# Sicher stellen, dass *bin* in `$PATH` abgespeichert ist

Um die Shell-Skripte, die Du in den *bin*-Ordner legst, verwenden zu
können, musst Du sicherstellen, dass sich dieser Ordner in der Variable
`$PATH` befindet. Denn die Shell schaut in alle Ordner, die in `$PATH`
angegeben werden. Willst Du z.B. ein Script namens *favicon* starten und
gibst *favicon* in das Terminal ein, sucht das Terminal, zuerst in den
Ordner nach dem Befehl nach, die in der `$PATH`-Variable abgespeichert
sind. Damit auch unser neu angelegter Ordner mit unseren eigenen
Shell-Scripten bzw. Befehlen durchsucht wird, müssen wir genau dafür
sorgen. Den Inhalt der Variable, kannst Du natürlich wie jede andere
Variable auch mit `echo $PATH` ausgeben lassen.

Um unseren neuen Pfad in `$PATH` zu verewigen, öffnest Du jetzt Dein
*.bash\_profile* mit einem Editor Deiner Wahl. Ich nutze dazu z.B. Atom
und öffne mein *.bash\_profile* so:

    $ open ~/.bash_profile -a "Atom"

Da das *.bash\_profile* in Deinem Benutzerverzeichnis liegt, nutzen wir
beim `open`-Befehl einfach die Tilde `~` und geben den Dateinamen an.
mit `-a` öffnen wir eine Application, im obigen Fall den Texteditor
Atom. Du kannst aber auch einfach nur `open ~/.bash_profile` eingeben.
Dann öffnet sich mit hoher Wahrscheinlichkeit Textedit.

Füge jetzt folgende Zeile zu dieser Datei hinzu

    export PATH=$PATH:$HOME/bin

Damit die Änderungen wirksam werden, müssen wir Dein Profil neu laden.
Dazu musst Du in Deinem Benutzerverzeichnis sein. Wenn nicht, dann
wechsle schnell in das Verzeichnis mit `cd ~`. Lade jetzt mit dem
folgenden Befehl Dein Profil neu.

    $ source ~/.bash_profile

# Hinzufügen eigene Scripte bzw. Befehle

Nun kannst Du einfach Shell-Skripte in den *bin*-Ordner legen, um sie
benutzen zu können. Damit die Scripte ausgeführt werden können, musst Du
natürlich sichergehen, dass die Dateien die Rechte dazu haben. Das
erledigst Du immer mit `chmod 755 script_name`.

Das war’s. Jetzt kannst Du einfach *script\_name* in das Terminal tippen
und Dein eigenes Kommando wird ausgeführt.

# Links zum Thema

  - [OS X: Change your PATH environment
    variable](http://www.tech-recipes.com/rx/2621/os_x_change_path_environment_variable/)
