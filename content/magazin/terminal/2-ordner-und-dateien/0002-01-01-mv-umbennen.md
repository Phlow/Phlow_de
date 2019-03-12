---
title: Dateien umbenennen und verschieben mit mv
categories : "Ordner und Dateien"
description : 'Will man eine große
Anzahl an Dateien in einem Rutsch nach einem Schema oder mit einem Datum
umbenennen, ist das Terminal die ideale Wahl.'
---
title: Dateien umbenennen und verschieben mit mv

Will man eine große Anzahl an Dateien in einem Rutsch nach einem Schema
oder mit einer fortlaufenden Zahl oder einem Datum umbenennen, ist das
Terminal die ideale Wahl. Dieses Kapitel stellt verschiedene Methoden
vor, Dateien umzubenennen.

**`mv` ist der Standardbefehl, um Dateien umzubenennen und/oder Dateien
zu verschieben.** `mv` steht für *move*. Passt man einen Moment nicht
auf, so hat man nicht nur eine Datei oder einen Stapel Dateien
umbenannt, sondern gleichzeitig auch noch verschoben.

Um eine Datei *alter\_name.jpg* in *neuer\_name.jpg* umzubennen, muss
man den folgenden Befehl eingeben. Wichtig ist, dass man sich bei der
folgenden Version im gleichen Verzeichnis befindet:

    $ mv alter_name.jpg neuer_name.jpg

Natürlich lassen sich auch **Dateien in anderen Verzeichnissen
umbenennen**. Dazu nutzt man die üblichen Zeichen bzw. die jeweiligen
Ordnernamen. So benennt der folgende Befehl die Datei *altes\_bild.jpg*
in *neues\_bild.jpg* um. Dazu sucht der Befehl das Bild auf dem Desktop
(Schreibtisch). Die `~` steht in diesem Zusammenhang für das
Benutzerverzeichnis, bei mir ist das */Users/moritz*.

    $ mv ~/Desktop/altes_bild.jpg ~/Desktop/neues_bild.jpg

Vergisst Du den Pfad beim zweiten Dateienamen, verschiebt das Terminal
das Bild **und** benennt es um. Das Bild landet mit neuem Namen in dem
Ordner, in welchem Du Dich gerade im Terminal befindest.

Befindest Du Dich z.B. im Ordner *\~/Desktop/test*, landet die Datei
*altes\_bild.jpg* beim folgenden Befehl als *neues\_bild.jpg* in
*\~/Desktop/test*.

    $ mv ~/Desktop/altes_bild.jpg neues_bild.jpg

Mit `mv` kannst Du auch **mehrere Dateien gleichzeitig verschieben**.
Dazu schreibst Du die Dateinamen eine nach der anderen auf und trennst
die Dateinamen durch ein Leerzeichen und gibst abschließend das
Verzeichnis an, in welches sie verschoben werden sollen. Du kannst auch
das `*` als Platzhalterzeichen nutzen.

    $ mv bild-02.jpg bild-03.jpg ~/Desktop/

Der obige Befehl verschiebt *bild-02.jpg* und *bild-03.jpg* auf den
Schreibtisch.

Neben Dateien **verschiebt `mv` auf Befehl auch ganze Ordner**. Der
folgende Befehl verschiebt *unterordner* in *ordner*.

    $ mv unterordner/ order/

Um mehr Kontrolle und Informationen von `mv` zu erhalten, gibt es die
Option `-v`. `-v` veranlasst `mv` die eigenen Aktivitäten auf den
Bildschirm auszudrucken. So erscheint bei…

    $ mv -v bild-02.jpg foto-02.jpg

…die folgende Ausgabe:

    bild-02.jpg -> foto-02.jpg

Eine Gefahr von `mv` ist, dass der Befehl existierende Dateien beim
umbenennen oder verschieben einfach ungefragt überschreibt. Um
versehentliches Löschen von Dateien zu unterbinden, schaltest Du mit `i`
den interaktiven Modus an. Existiert eine gleichnamige Datei bereits,
fragt Dich `mv` erst, ob die Datei tatsächlich überschrieben werden
soll. Mit der Option `n` wiederum unterbindest Du generell das
Überschreiben existierender Daten. Dahingegen überschreibt `mv` mit
`-u` nur dann Dateien, wenn diese älteren Datums sind.

# Datum der Datei in den Dateinamen schreiben

Jede Datei hat ein eigenes Datum. Lädt man z.B. von einer Digitalkamera
Bilder herunter, haben die Bilddateien oft ein nichtssagendes Format wie
z.B. *dcim\_6422.jpg*. Um einen Stapel Dateien unkompliziert
umzubenennen, muss man…

1.  …zuerst das Datum der jeweiligen Datei auslesen,

2.  …dann das Datum formatieren…

3.  …und schließlich die Datei umbenennen.

Der Befehl `stat` zeigt Informationen über eine Datei an. Das sind Datum
der Entstehung, letzten Änderung, dass sind Informationen zum Besitzer
der Datei als auch eine eigene ID und so weiter. Ein Beispiel:

    $ stat datei.jpg

Der obige Befehl druckt die folgenden Informationen
    aus

    16777220 34783603 -rw-r--r-- 1 moritz staff 0 371961 "Jan  2 09:17:44 2017" "Oct 26 12:22:00 2016" "Jan 11 14:13:53 2017" "Oct 26 12:22:00 2016" 4096 728 0 datei.jpg

Damit man diese Informationen für das Umbenennen einer Datei nutzen
kann, muss man sich die Informationen erst einmal herauspicken. Das wäre
der Unix-Zeitstempel der Entstehung. Den erhälst Du über:

    $ stat -f %B datei.jpg

Das ergibt eine kryptische Zahl, in meinem Beispiel *1477477320*. Diesen
Zeitstempel muss ich im nächsten Schritt mit dem Befehl `date`
umformatieren. Damit `date` nicht die aktuelle Zeit meines Rechners
nutzt, fügt man die Option `r` hinzu. Mit `+%Y-%m-%d-%H-%M-%S` bestimme
ich das Schema. Die einzelnen Buchstaben mit vorangestellten %-Zeichen
sind jeweils Platzhalter für ***Y**ear*, ***m**onth*, ***d**ay*,
***h**our*, ***m**inute* und ***s**econd*.

Zwischen den Zahlen habe ich ein Minuszeichen platziert, damit das
Ergebnis übersichtlicher und lesbarer wird. Der Befehl sieht dann so
aus:

    $ date -r $(stat -f %B datei.jpg) +%Y-%m-%d-%H-%M-%S

Der obige Befehl ergibt dann *2016-10-26-12-22-00*. Damit ich das
Ergebnis später beim Umbenennen nutzen kann, speicher ich es in einer
Variable ab. Zum Beispiel so: `VARIABLE_MIT_FORMATIERTER_ZEIT=$(date -r
$(stat -f %B $datei) +%Y-%m-%d-%H-%M-%S)`

> **Caution**
> 
> Auch die Uhrzeit ist wichtig, denn wenn man z.B. einen Stapel Bilder
> eines Urlaubstages umbenennt und nicht die Uhrzeit nutzt, überschreibt
> `mv` die Dateien womöglich und aus mehreren Dateien eines Tages wird
> eine Datei mit dem Datum des Tages.

Da ich einen ganzen Stapel Dateien umbenennen will, benötige ich eine
for-loop, die über sämtliche Dateien drüberläuft: `for datei in *.jpg`.
Innerhalb der Schleife erhalte ich die datei als Variable mit `$datei`.
Dann hole ich mir mit `stat` die Zeitinformationen, formatiere diese
anschließend mit `date` und benenne zum Abschluss die Datei mit `mv` um.
Mit den Optionen `-vi` lasse ich mir das Ergebnis per `v` auf den
Bildschirm ausgeben und mit `i` verhindere ich, dass nicht aus Versehen
eine bestehende Datei überschrieben wird.

Das Ergebnis sieht wie folgt aus. Du kannst es Zeile für Zeile im
Terminal eingeben und ausprobieren.

**Script rename\_with\_date.sh.**

    for datei in *.jpg
      do VARIABLE_MIT_FORMATIERTER_ZEIT=$(date -r $(stat -f %B $datei) +%Y-%m-%d-%H-%M-%S)
      mv -vi "$datei" "$VARIABLE_MIT_FORMATIERTER_ZEIT-$datei"
    done

Noch schneller geht es mit dem Ein-Zeilen-Befehl, der in Kurzform sehr
kryptisch ist:

**Ein-Zeilen-Befehl: Umbenennen mit Datum und
    Zeit.**

    for f in *.jpg; do D=$(date -r $(stat -f %B $f) +%Y-%m-%d-%H-%M-%S); mv -vi "$f" "$D-$f"; done

# Alle Dateien in Kleinbuchstaben umbenennen

**Ein-Zeilen-Befehl: Alle Dateien in Kleinbuchstaben
    umbenennen.**

    for file in *; do mv "$file" "$file.tmp"; mv "$file.tmp" "`echo $file | tr "[:upper:]" "[:lower:]"`"; done

# Allen Dateien Worte oder Zeichen voranstellen

Wenn Du allen Dateien ein Wort voranstellen möchtest, dann geht das
einfach über die folgende Schleife. Zuvor kannst Du mit `echo` testen,
ob das Endergebnis Deiner Anforderung entspricht.

**Ein-Zeilen-Befehl: Test zuerst mit `echo`.**

    for file in *.jpg; do echo mv "$file" "bild-$file"; done

**Ein-Zeilen-Befehl: Allen Dateien das Wort *bild* voranstellen.**

    for file in *.jpg; do mv "$file" "bild-$file"; done

# Zeichen oder Worte ersetzen

Mit der folgenden Schleife ersetzt Du Zeichenfolge. Um nach dem obigen
Beispiel die Zeichenfolge *bild-* wieder zu entfernen und mit *foto-* zu
ersetzen nutzt den den folgenden
    Befehl:

    for file in *.jpg; do mv "$file" "${file/ALTE_ZEICHENFOLGE/NEUE_ZEICHENFOLGE}"; done

Für das Beispiel bedeutet das:name: value

    for file in *.jpg; do mv "$file" "${file/bild-/foto-}"; done

# Zeichen oder Worte löschen

Um Zeichen oder Worte in Dateinamen zu löschen, nutzt Du den obigen
Befehl und modifizierst ihn.

    for filename in *.jpg; do mv "$filename" "${filename//foto-/}"; done

Gists aus diesem Artikel:
