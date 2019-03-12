---
title: "diff: Inhalte von Dateien und Ordnern vergleichen"
categories : "Ordner und Dateien"
description : 'Will man Dateien in
einem Ordner samt Unterordner mit einem anderen Ordner vergleichen,
hilft der Befehl diff. Auch fehlende Bilddateien spürt man so auf.'
---

Will man Dateien in einem Ordner samt Unterordner mit einem anderen
Ordner vergleichen, hilft der Befehl diff. Auch fehlende Bilddateien
spürt man so auf.

# diff: Inhalte von Dateien und Ordnern vergleichen

Wenn die Dateien die gleichen sind, dann gibt es keine Ausgabe.

Wolltest Du schon einmal schnell zwei Verzeichnisse vergleichen, um zu
sehen, welche Dateien sich unterscheiden?

    $ diff -rq folder1 folder2

`diff` ist ein ziemlich einfacher Befehl. Das `r` befiehlt diff jedes
Verzeichnis rekursiv zu durchlaufen, einschließlich der
Unterverzeichnisse. Der `q` befiehlt diff nur die nötigsten
Informationen auszugeben. Wenn `q` nicht gesetzt ist, dann gibt diff
alle Unterschiede für alle Textdateien zeilenweisen aus.

# Unterschiede nebeneinander anzeigen

![Dateien nebeneinander vergleichen mit
diff](../images/vergleichen-1.png)

Wenn es viele Unterschiede zwischen den Dateien und Ordnern gibt, wird
die Darstellung schnell verwirrend. Mehr Übersicht erzielst Du mit der
Option `y`.

Die Ausgabe für die Datei verwendet das `|`-Zeichen, um eine Differenz
zwischen den beiden Zeilen anzuzeigen. Weiterhin gibt es zwei Zeichen,
die beim Entdecken von Unterschieden helfen: `<` zeigt eine Zeile, die
entfernt wurde, und `>` zeigt eine Zeile, die hinzugefügt wurde.
