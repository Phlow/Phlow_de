---
title: Dateien finden mit dem Terminal
categories : "Ordner und Dateien"
description : 'Die Terminal Suche mit find ist ein mächtiges Werkzeug. Mit find findest Du nicht nur Dateien, sondern kannst Sie auch z.B. löschen oder verschieben.'
slug        : dateien-finden
---
Die Terminal Suche `find` ist ein mächtiges Werkzeug, dass Dir viel Zeit
ersparen kann. So erlaubt die Suche, nicht nur die Suche nach
Dateienamen, sondern Du kannst auch Inhalte von Dokumenten durchsuchen.
Das ist z.B. hilfreich, wenn Du in HTML-, Javascript- oder PHP-Dateien
etwas suchst.
<!-- readmore -->

{{< toc >}}

## Einfache Suche mit `find`

Um die Suche nach Dateien zu starten, verwendet man den folgenden
`find`-Befehl, der sich einfach so liest: _Suche in X nach Y_.

    $ find X -name Y

Das *X* steht für den Pfad zum Speicherort auf dem Computer, den Du
durchsuchen möchtest. Der folgende Befehl durchsucht den gesamten
Computer nach dem Namen *helge.md*, denn dank des `/` beginnt Die Suche
im Wurzelverzeichnis/Hauptverzeichnis. Dabei gibt `find` Verzeichnisse
als auch Dateien aus, die mit *helge.md* betitelt sind.

    $ find / -name "helge.md"

{{< warning >}}
Solltest Du als Benutzer nicht die Rechte haben, in bestimmten Verzeichnissen suchen zu dürfen, gibt `find` eine Meldung aus und  überspringt das jeweilige Verzeichnis.
{{< /warning >}} 

Wie bereits in [Dateien und Ordner]( {{< ref "2-ordner-dateien-01-datei-ordner-befehle.md" >}}) beschrieben, kannst Du
wieder `.`, `..`, `~`, `/` und `*`. nutzen, um die jeweiligen Orte zu
bestimmen, von welchen Du aus suchen willst.

Du kannst natürlich auch nach bestimmten Dateitypen suchen, indem Du \*
als Platzhalterzeichen verwendest. Der folgende Befehl sucht in dem
Verzeichnis, in welchem Du Dich befindest – durch den `.` Punkt
gekennzeichnet – nach allen Dateitypen mit der Endung `.jpg`:

    find . -name "*.jpg"

## Suchtiefe mit `-maxdepth` begrenzen

Der folgende `find`-Suchbefehl startet im aktuellen Verzeichnis, dass
durch den `.` gegeben wird. Mit `-maxdepth 3` bestimmst Du anschließend
die Verzeichnistiefe, also wie tief `find` suchen soll. Damit grenzt Du
Deine Suche genauer ein und verhinderst, das evtl. `find` sehr lange
sucht oder sehr viele bzw. zu viele Informationen auf den Bildschirm
ausgibt.

    $ find . -maxdepth 3 -type f -name ".htaccess"

Du hast sicherlich festgestellt, dass der Befehl auch Ordner als
Ergebnis zurückgibt. Das kannst Du vermeiden, indem Du die Option
`-type` verwendest. Mit `-type` definierst Du den Typ, den `find` suchen
soll. Es gibt zwar mehrere Optionen, aber in der Regel wird es `-type
f` oder `-type d` sein – also **f**iles oder **d**irectories.

## Dateien mit einer Größe X oder größer finden

Im folgenden Beispiel suchen wir nach Dateien größer als 10 MB im
aktuellen Ordner und den Unterordnern. Das ist zum Beispiel sehr hilfreich, wenn Du Platz auf Deiner Festplatte schaffen willst. Lass `find` einfach den Computer nach sehr großen Dateien durchsuchen und entscheide dann, ob Du Sie wirklich benötigst.

    $ find ./ -size +10000000c

## Dateien mit Dateiendungen finden und löschen

Bevor Du Dateien mit `find` unwiderruflich löschst, solltest Du zuerst
den Befehl anwenden, um Dir die gefundenen Dateien aufzulisten. Der
folgende Befehl sucht im aktuellen Verzeichnis und allen
Unterverzeichnissen nach einer Datei mit der Endung **.docx**.

    $ find . -name "*.docx" -type f

Um die Dateien dann endgültig zu löschen, benötigst Du noch die Option
`-delete`. Achte dabei darauf, dass `delete` das letzte Argument des
Kommandos ist. Wenn Du es vor das die Option `-name` eingibst, wird
alles gelöscht. Sei vorsichtig, denn es landet nicht im Papierkorb. Es ist weg!

    $ find . -name "*.docx" -type f -delete
