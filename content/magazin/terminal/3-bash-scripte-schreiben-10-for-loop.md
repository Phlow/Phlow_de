---
title           : "Terminal: For-Loop/Schleifen um Befehle zu wiederholen"
chapter         : 3
categories      : "Bash Scripte schreiben"
description     : "Mit for
loop-Schleifen wiederholst Du im Terminal Befehle und konvertierst z.B.
mehrere Bild-Dateien in einem Rutsch. Und so geht’s."
slug            : for-loop
---
Mit for loop-Schleifen wiederholst Du im Terminal Befehle und
konvertierst z.B. mehrere Bild-Dateien in einem Rutsch. Und so geht’s.
<!--more-->

Mit einer `for loop` wiederholst Du Befehle oder Befehlsketten. So
konvertierst Du z.B. einen ganzen Bilderordner mit einer for
loop-Schleife und dem {{ '/sips/' | absolute\_url }}\[Befehl `sips`\]
anstelle für jedes einzelne Bild den Befehl auszuführen.

Eine `for loop` kannst Du in einem {{ '/bash-scripte-schreiben/' |
absolute\_url }}\[Bash-Script\] als auch direkt im Terminal ausführen.

# Aufbau einer For Loop-Schleife im Terminal

Eine ganz simple `for loop` sieht z.B. so aus:

    $ for datei in *.jpg;do echo $datei; done

Der Befehl liest sich dann so:

1.  Für alle Dateien mit der Endung `.jpg` tue folgendes:
2.  Gib den Dateinamen aus.
3.  Fertig.

`datei` ist hierbei eine Platzhaltervariable, die Du benennen kannst,
wie Du möchtest. Oft wird z.B. auch einfach nur ein `i` genommen. Das
Semikolon startet dann die Schleife. Hierbei ist der Befehl `do`
wichtig, der am Ende mit `done` abgeschlossen wird. `do` startet den
Befehl oder eine ganze Befehlskette. `done` beendet die Kette. Mit `echo
$datei` greift man auf die Variable `datei` zurück und gibt den
Dateinamen mit `echo` aus. Wichtig ist das `$` damit das Terminal
innerhalb der Schleife `datei` als Variable erkennt und nicht als
tatsächlichen Dateinamen.

In dem folgenden Beispiel konvertiert das Terminal alle TIF-Bilder des
aktuellen Ordners über den {{ '/sips/' | absolute\_url }}\[Befehl
`sips`\] in
    JPG-Dateien.

    $ for bild in *.tif;do sips -s format jpeg $bild --out $bild.jpg;done

## Rekursive For Loop im Terminal

Soll die _for loop_ nicht nur Dateien im aktuellen Verzeichnis finden, sondern auch in Unterverzeichnissen, dann musst Du die Schleife mit dem Befehl `find` kombinieren – [Dateien finden mit dem Terminal]({{< ref "2-ordner-dateien-01-dateien-finden.md" >}}).

Der Ausgangspunkt der folgenden Schleife ist das aktuelle Verzeichnis _./_. In diesem samt Unterverzeichnissen sucht `find` nach Dateien mit der Endung _.md_ und gibt diese Dateien mit `echo` aus.

    $ for datei in $(find ./ -name '*.md'); do echo $datei; done




