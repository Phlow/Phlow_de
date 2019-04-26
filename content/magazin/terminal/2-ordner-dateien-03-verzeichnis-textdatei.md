---
title:  Inhalte von Verzeichnissen als Textdatei speichern
chapter         : 2
categories : "Ordner und Dateien"
description : 'Der Befehl `ls` gibt
den Inhalt des aktuellen Ordners aus. Anstelle den Inhalt im Terminal
auszugeben, kann man diesen umleiten.'
slug            : ls-verzeichnis-textdatei
---
Der Befehl `ls` gibt den Inhalt des aktuellen Ordners aus. Anstelle den
Inhalt im Terminal auszugeben, kann man diesen umleiten. Mit `>` leitet
man die Ausgabe in eine `.txt`-Datei um. Diese kann man dann in jedem
Texteditor öffnen.
<!-- readmore -->

    $ ls > verzeichnisinhalt.txt

Die zusätzlichen Parameter `-la` sorgen dafür, dass die Dateien als
ausführliche Liste mit allen Angaben ausgegeben werden.

    $ ls -la > verzeichnisinhalt.txt

Über das Terminal kann man diese Datei auch unkompliziert mit `open
verzeichnisinhalt.txt`. Noch schneller geht es, wenn man die Befehle
miteinander verkettet.

    $ ls > verzeichnisinhalt.txt;open verzeichnisinhalt.txt

**Noch mehr Tricks**

[List All Files and Folders Recursively via
Terminal](https://perishablepress.com/list-files-folders-recursively-terminal/)
