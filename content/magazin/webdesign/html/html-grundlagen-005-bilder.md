---
weight          : 005
subtitle        : HTML Grundlagen
title           : 'Bilder einfügen mit img'
categories      : html-grundlagen
youtube         : V9ia1GlWC8c
image:
    title       : /images/webdesign/004-bilder-einfuegen-mit-img-1280x720.jpg
slug            : bilder
---
Mit dem HTML-Tag `<img>` baust Du eine Bilddatei wie z.B. eine JPG-Datei in ein HTML-Dokument ein.
<!-- readmore -->

`<img>` ist ein sogenanntes Standalone-Tag ohne Elementinhalt und ohne End-Tag. Du musst es also nicht schließen. Das `<img>`-Tag benötigt zwei Pflichtangaben: die beiden Attribute `src` und `alt`.

Dabei steht `src` für _source_, also Quelle. Zwischen die Anführungsstriche gehört der Pfad zur Bilddatei. Liegt die Bilddatei z.B. im gleichen Verzeichnis wie die HTML-Datei, dann genügt `src="bild.jpg"`, um die JPG-Datei _katze.jpg_ in das HTML-Dokument einzubauen.

Auch wenn `<img>` ohne das Attribut `alt` funktioniert, solltest Du es immer mit angeben. `alt` steht für alternativ und Du kannst eine alternative Textbeschreibung für das Bild eingeben. Das hat gleich drei Vorteile:

1. Wenn das Bild nicht gefunden wird, zeigt der Browser einen alternativen Text an.
2. Suchmaschinen können Bilder noch nicht verstehen und analysieren den alternativen Text. Dort pflegst Du wichtige Suchwörter für die Suchmaschinenoptimierung ein.
3. Spezialisierte Browser bzw. Reader lesen Blinden und Sehbehinderten die alternativen Texte vor.

Ist das Bild nicht wichtig, dann kannst Du das Attribut auch leer lassen: `alt=""`.

{{< highlight html >}}
<img src="katze.jpg" alt="Schwarze Katze auf Dach">
{{< /highlight >}}

## Angaben für Breite und Höhe

Der Browser weiß erst wie groß ein Bild ist, wenn er es bereits geladen hat. Damit der Inhalt einer Webseite nicht unnötig beim Ladevorgang hin- und herrutscht, hilfst Du dem Browser mit `width` und `height` auf die Sprünge.

Während Du mit `width` die Breite des Bildes in Pixeln angibst, bestimmst Du mit `height` die Höhe in Pixeln. Der Browser plant dann für das Bild Deinen Vorgaben entsprechend ein Rechteck ein, in welches das Bild gesetzt wird.

{{< highlight html >}}
<img src="katze.jpg" widht="160" height="90" alt="Schwarze Katze auf Dach">
{{< /highlight >}}


{{< success >}}
**Übung:** Erstelle eine *info.html*-Webseite und füge ein Bild von Dir ein. Wenn Du noch Zeit hast, schreib eine Kurzbeschreibung über Dich. Gestalte den Text mit <a href="http://webdesign.phlow.de/html-absaetze-ueberschriften-zeilenumbruch/">Überschriften und Absätzen</a>
{{< /success >}}

## Attribute für den HTML-Bild-Befehl `img`

Es gibt die folgenden Attribute:

|  Attribute   |  Erklärung |
|:-------------|:-----------|
| `src`           |      |
| `alt`           |      |
| `width`           | Breite des Bildes (optional)     |
| `height`           | Höhe des Bildes (optional)      |
| `alt`           |      |
| `title`           | Information für Tooltip     |
