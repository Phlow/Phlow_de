---
title: Dateien gezielt löschen mit rm
categories : "Ordner und Dateien"
description : 'Mit rm löschst Du
superschnell einzelne oder mehrere Dateien. Gezielt kannst Du Dateien
nach Endungen auch gleichzeitig in mehreren Unterordnern löschen.'
slug            : rm-dateien-loeschen
---
Mit rm löschst Du superschnell einzelne oder mehrere Dateien. Gezielt
kannst Du Dateien nach Endungen auch gleichzeitig in mehreren
Unterordnern löschen. Dazu kombinierst Du `rm` mit dem Befehl `find`.
Bevor Du Dateien endgültig löschst, kannst Du Dir vorher zur Sicherheit
mit `echo` die Dateien anzeigen, die gelöscht werden.
<!-- readmore -->

**`rm`** ist der Standardbefehl, um Dateien und auch Ordner samt Inhalt
zu löschen.

# Dateien löschen mit `rm`

Um eine einzelne Datei zu löschen benutzt Du den Befehl `rm`. Um die
Datei *anleitung.pdf* zu löschen, musst Du Dich im dazugehörigen Ordner
befinden. Anschließend tippst Du folgendes in das Terminal:

    $ rm anleitung.pdf

Willst Du gleich mehrere Dateien löschen tippst Du einfach mehrere
Dateien hintereinander ein.

    $ rm anleitung.pdf rechnung.pdf brief.odt

> **Warning**
> 
> **`rm` ist super-gefährlich, weil `rm` Dateien endgültig löscht. `rm`
> verschiebt Dateien nicht in den Papierkorb. Dazu nutzt Du besser den
> Befehl link:{{ '/mv-umbennen/' | absolute\_url }}\[mv\].** Darum
> Vorsicht\!

# Dateien vorsichtig löschen mit `rm -i`

`rm` vernichtet Dateien. Wenn Du Dir nicht sicher bist und Du lieber
einzel bestätigen willst, ob eine Datei gelöscht werden soll, dann nutzt
Du dafür die Option `-i`. Das Terminal fragt Dich dann bei jeder Datei,
ob diese tatsächlich vernichtet werden soll.

# Verzeichnis samt Dateien löschen mit `rm -r`

Ein Verzeichnis kannst Du mit `rm` nicht direkt löschen. Dafür benötigst
Du die leistungsstarke Option `-R` bzw. `-r`, die auch als *rekursive
Option* bezeichnet wird. Wenn Du den Befehl `rm -r` für einen Ordner
ausführst, weist Du `rm -r` das Terminal an, diesen Ordner und alle
darin enthaltenen Dateien und alle darin enthaltenen Unterordner sowie
alle Dateien oder Ordner in diesen Unterordnern vollständig zu löschen.
Das geht schneller als Du denkst und die Daten bekommst Du nie wieder.
Also nochmal:
**Vorsicht\!**

# Ordner nach Dateien mit definierter Dateiendung durchsuchen und löschen

Damit Du Dateien mit einer definierten Dateiendung auch in Unterordnern
löschen kannst, kombiniert man `rm` mit `find`. `find` sucht zuerst die
Dateien und führt dann mit der Option `exec` einen Befehl aus. In
unserem Fall ist das der Löschbefehl `rm`.

Die Formel sieht dann wie folgt
    aus:

    $ find $STARTVERZEICHNIS -name '*.$DATEIENDUNG' -exec echo rm -rv {} \;

Mit *$STARTVERZEICHNIS* definierst Du den Startpunkt der Suche, z.B. das
aktuelle Verzeichnis mit `./`. Die Variable *$DATEIENDUNG* ersetzt Du
mit einer Dateiendung, z.B. *.m3u* (Endung für MP3-Playlist). Damit der
Befehl nicht direkt alle gefundenen Dateien löscht, geben wir erst
einmal das Ergebnis mit `echo` aus. Bist Du mit den Ergebnissen
zufrieden, löschst Du einfach `echo` und `rm` löschst **unwiderruflich**
alle gefundenen Dateien. Die geschweifte Klammern `{}` stehen als
Platzhalter für die von `find` gefundenen Dateinamen. Das Zeichen `;`
terminiert den von `find` aufzurufenden Befehl. Damit es nicht
unbeabsichtigt von der Shell interpretiert wird, muss der Befehl mit
`\`.

So löschst Du mit dem folgenden Befehl alle Dateien mit der Endung
*.m3u* in sämtlichen Unterordnern ausgehend vom Verzeichnis, in welchem
Du Dich gerade befindest. Damit der Befehl wirklich alle *.m3u*-Dateien
löschst, musst Du noch `echo` entfernen.

    $ find ./ -name '*.m3u' -exec echo rm -rv {} \;

Um Dateien mit unterschiedlichen Endungen einzuschließen, kannst du die
`or` Verknüpfung von `find` nutzen:

    $ find ./ -name '*.jpg' -or -name '*.jpeg' -exec echo rm -rv {} \;
