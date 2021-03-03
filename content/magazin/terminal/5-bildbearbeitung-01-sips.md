---
title           :  "Terminal: Bildbearbeitung mit sips"
chapter         : 5
categories      : "Bildbearbeitung"
description     : 'Der Terminal-Befehl sips eignet sich hervorragend Bilddateien in andere Formate zu konvertieren oder in der Größe zu manipulieren.'
slug            : bildbearbeitung-sips
---
Der Terminal-Befehl `sips` eignet sich hervorragend Bilddateien in
andere Formate zu konvertieren, in der Größe zu ändern oder zu
beschneiden. In Kombination mit der kostenlosen Software ImageOptim
erhält man das perfekte Werkzeug, um einen Stapel Bilder
zurechtzuschneiden und anschließend dann noch ohne Verluste zu
komprimieren.
<!--more-->

{{< toc >}}

`sips` bietet zahlreiche Möglichkeiten Bilder zu manipulieren. Außerdem
arbeitet `sips` schnell und effizient. Selbst Bilderstapel rechnet das
Programm von einer Größe zur nächsten in flüssiger Geschwindigkeit.
Nutzt man eine for-Schleife verarbeitet der Befehl einen ganzen Stapel.
Weiter unten zeige ich, wie man sich seine eigenen Skripte mit `sips`
baut, um z.B. in ein paar Sekunden aus einem Icon die zahlreichen
verschiedenen Favicon-Größen für iOS-, Windows- oder Desktop-Geräte zu
erstellen.

## Bilder in Größe anpassen und Seitenverhältnis beibehalten

Wie jeder Befehl auf der Kommandozeile bietet auch `sips` zahlreiche
Einstellungen und Optionen. Wenn Du z.B. Bilddateien für Web-Projekte
verkleinern und die Seitenverhältnisse beibehalten willst, dann nutzt Du
`sips` gemeinsam mit der Option `-Z`. Anschließend gibst Du einen
Pixelwert an, der von der Höhe oder Breite des Bildes nicht
überschritten werden darf. Die folgenden beiden Befehle verkleinern
*bild-1600x900.jpg* und *bild-900x1600.jpg* auf 360 Pixel.

    $ sips -Z 360 bild-900x1600.jpg
    $ sips -Z 360 bild-1600x900.jpg

Ein Problem gibt es bei dem obigen Befehl. `sips` verkleinert die Bilder
und überschreibt sie im gleichen Schritt. Um das Überschreiben von
Bildern zu vermeiden, brauchst Du dazu die Option `--out` auf die ein
Dateiname unter welchem das bearbeitete Bild gespeichert werden soll.
Das sieht dann so aus:

    $ sips -Z 360 bild-900x1600.jpg --out bild-202x360.jpg
    $ sips -Z 360 bild-1600x900.jpg --out bild-360x202.jpg

Du kannst auch einen Ordner über `--out` bestimmen. Damit das
funktioniert, muss der Ordner bereits existieren. Die Bilddateien
behalten bei der Verkleinerung dann ihren Namen. Das sieht dann so aus:

    $ mkdir thumbnail 
    $ sips -Z 360 bild-900x1600.jpg --out thumbnail 
    $ sips -Z 360 bild-1600x900.jpg --out thumbnail 

  - `mkdir` erstell das Verzeichnis *thumbnail*

  - `sips` verkleinert die Bilder und speichert sie im Ordner
    *thumbnail* ab.

### For-Schleife für die Bildbearbeitung

Die folgende Schleife verkleinert die Bilder auf eine Bildhöhe mit 900 Pixeln und speichert die Bilder unter einem neuen Namen ab, der mit `-600x900` endet.

~~~~
for image in *.jpg; do sips -Z 900 $image --out $image-600x900; done
~~~~

## Bilder zuschneiden mit sips

Bild anpassen und zurechtschneiden und Seitenverhältnis ignorieren

    $ sips -z 360 360 bild-1600x900.jpg --out bild-360x360.jpg

**Parameter.**

    -z pixelsH pixelsW
         --resampleHeightWidth pixelsH pixelsW
               Resample image at specified size. Image apsect ratio may be altered.
    
         --resampleWidth pixelsW
               Resample image to specified width.
    
         --resampleHeight pixelsH
               Resample image to specified height.

## Bilder passgenau zuschneiden und im Unterordner speichern

Um die Dateien in einen Ordner namens *thumbnails* zu speichern, gibt
man folgendes an:

    $ sips -Z 150 -c 150 150 *.jpg --out thumbnails

Wenn Sie nur eine Datei mit einer neuen Dateiendung zu erstellen – z.B.
*.jpg* – dann hängen Sie die Endung einfach so an:

    $ sips -Z 150 -c 150 150 bild.jpg --out bild_thumb.jpg

## Bilder von einem Format ins andere konvertieren

Um ein einzelnes Bild mit sips zu konvertieren, verwendest Du die folgende Syntax:

    $ sips -s format [image type] [file name] --out [output file]

Eine Datei mit dem Namen _test.jpg_, die Du in das [PNG-Format]({{< ref "09-bilder-01-04-png.md" >}}) konvertieren möchtest, musst Du dann den folgenden Befehl eingeben:

    sips -s format png test.jpg --out test.png

Das Konvertieren einer Gruppe von Bildern ist etwas kniffliger, und die Verwendung einfacher Platzhalter wie bei der Größenänderung mit Sips funktioniert nicht ganz so. Du wirst feststellen, dass die Verwendung eines generischen Platzhalters wie * die Datei ebenfalls nicht umbenennt, daher verwenden wir stattdessen sehr einfaches Shell-Scripting mit der folgenden Befehlssyntax:

    $ for i in [filename]; do sips -s format [image type] $i --out [destination]/$i.[extension];done

Dazu konvertieren wir einen Ordner mit .jpg-Dateien in png-Dateien in einem neuen Unterordner des aktuellen Verzeichnisses, genannt _konvertiert_:

    $ for i in *.jpg; do sips -s format png $i --out konvertiert/$i.png;done

## Dateiformat von Bildern mit 100% Qualität in JPGs konvertieren

Um z.B. TIFF-Bilder so verlustfrei wie möglich in das JPG-Format zu
konvertieren, benötigst Du die Option `-s formatOptions` und einen
dazugehörigen Wert. Der höchste Wert ist hierbei 100. Den neuen
Dateinamen gibst Du dann über `--out` an. Der Befehl sieht dann so aus:

    -s formatOptions 100 bild.tif --out bild.jpg

Richtig komfortabel konvertierst Du dann z.B. einen Ordner mit
TIFF-Bildern über eine {{ '/for-loop/' | absolute\_url
}}\[For-Schleife\].

    $ for bild in *.tif;do sips -s format jpeg -s formatOptions 100 $bild --out $bild.jpg;done

## Bilder verlustlos komprimieren mit ImageOptim

[ImageOptim](https://imageoptim.com/) komprimiert Bilddateien ohne
Qualitätsverlust. Dazu entfernt das kostenlose Open Source-Programm
aufgeblähte Metadaten aus den Bilddateien. Das spart Speicherplatz und
Bandbreite. ImageOptim kannst Du auch direkt über das Terminal mit Hilfe
des `open`-Kommandos aufrufen und alle oder gezielte Bilddateien
optimieren lassen.

Gemeinsam mit sips bildet das eine hervorragende Grundlage, um in einem
Rutsch einen Stapel Bilder in verschiedene Größen umzurechnen und
anschließend noch einmal ohne Qualitätsverluste zu optimieren. Das
folgende Video[^1] stellt ImageOptim vor. Das Programm lädst Du über
<https://imageoptim.com> herunter.

{{< amp/img src="/images/terminal/video-imageoptim.jpg" width="1280" height="720" alt="Video anschauen" >}}
Link: <https://www.youtube.com/watch?v=rTZEDv1VDPU>

Der einfachste Weg, *ImageOptim* vom Terminal aus zu starten,
funktioniert so:

    $ open -a ImageOptim .

Damit startet ImageOptim mit sichtbarer Benutzeroberfläche und optimiert
asynchron alle Bilder im aktuellen Verzeichnis und in den
Unterverzeichnissen. Der Befehl wird sofort beendet und wartet nicht auf
das Ergebnis.

Wenn dieser Befehl ausgeführt wird, werden mehrfache Dateien zu der
bereits laufenden ImageOptim-Instanz hinzugefügt.

Anstelle des `.`-Arguments am Ende, kannst Du auch gezielt Dateien oder
Verzeichnisse mit ImageOptim optimieren. Wenn Du lediglich alle
*.png*-Dateien im aktuellen Verzeichnis optimieren möchtest, dann geht
das so:

    $ open -a ImageOptim * .png

[^1]: Bilder verlustfrei komprimieren mit kostenlosem ImageOptim
    <https://www.youtube.com/watch?v=rTZEDv1VDPU>
