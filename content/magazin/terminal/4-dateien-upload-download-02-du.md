---
subtitle        : 'Dateien Upload und Download'
title           : 'du und df: Festplattenspeicher und Größen von Ordnern ausgeben'
chapter         : 4
categories      : 'Dateien Upload und Download'
slug            : du
---
Wenn Du wissen willst, wieviel Platz auf einem Webspace ist oder wie groß ein Verzeichnis samt Unterordnern ist, dann hilft Dir `du`.
<!--more-->

`du` steht für _disk usage_, also Speicherplatz.

## Größe eines Verzeichnisses anzeigen

Um die Größe eines Verzeichnisses anzuzeigen, benötigst Du die Option `s`. Das gibt aber keinen einfach zu lesenden Wert. Den erhältst Du mit `h` für _human_. Zusammen ergibt das:

    du -sh verzeichnisname

## Dateien oder Ordner nach Größe sortieren

Um Dateien nach Größe zu sortieren, benutzt Du `sort`. Um aus der Anzeige herauszukommen bzw. die Anzeige zu beenden, musst Du `q` drücken. Auch hier bestimmen wir mit `-h`, dass wir einfach zu lesende Werte erhalten.

    du -h verzeichnisname | sort -n -r | less

## Weitere Informationen

* http://osxdaily.com/2007/03/20/command-line-disk-usage-utilities-df-and-du/
* http://www.linfo.org/du.html
* https://shapeshed.com/unix-du/