---
title           : Bilder einfügen mit img
subtitle        : Bild
categories      : bilder
weight          : 0931
image:
  header                  : /images/webdesign/jpg-bildformat_21_9.jpg
  caption                 : Foto von Alexandru Zdrobău
  url                     : https://instagram.com/alexandru_zdrobau
slug            : img-tag
---
Mit &lt;img&gt; baust Du JPG-, PNG- oder z.B. GIF-Bilder in ein HTML-Dokument ein. &lt;img&gt; ist ein sogenanntes Standalone-Tag ohne Elementinhalt und ohne End-Tag.
<!-- readmore -->

Damit der Browser ein Bild in eine Webseite einbaut, musst Du dem Browser mitteilen, unter welcher Adresse er das Bild findet. Das geschieht mit dem Attribut `src`, für *Source* also Quelle.

Dabei musst Du darauf achten, wie Du das Bild verlinkst: relativ oder absolut. Hier vier Beispiele…

### Relativ verlinkte Bilder

Das folgende Bild ist relativ verlinkt. Das bedeutet, dass der Browser sich an der URL des HTML-Dokumentes orientiert. Im folgenden Fall muss das Bild im gleichen Verzeichnis liegen, wie das HTML-Dokument.

{{< highlight html >}}
<img src="vogel.jpg">
{{< /highlight >}}

Im folgenden Beispiel sucht der Browser das Bild ausgehend vom Verzeichnis des HTML-Dokumentes im Unterverzeichnis *images*.

{{< highlight html >}}
<img src="images/hund.jpg">
{{< /highlight >}}

Im nächsten Beispiel sucht der Browser das Bild ausgehend vom Verzeichnis des HTML-Dokumentes im übergeordneten Verzeichnis *images*.

{{< highlight html >}}
<img src="../katze.jpg">
{{< /highlight >}}

### Absolut verlinktes Bild

Und zum Schluss ein Beispiel, bei welchem das Bild _absolut_ verlinkt ist.

{{< highlight html >}}
<img src="https://phlow.de/bilder/katze.jpg">
{{< /highlight >}}

## Alternativer Text für Bilder

{{< highlight html >}}
<img src="vogel.jpg" alt="Wunderschöner Papageientaucher">
{{< /highlight >}}

## Höhe und Breite festlegen mit width und height

{{< highlight html >}}
<img src="vogel.jpg" alt="Wunderschöner Papageientaucher" widht="160" height="90">
{{< /highlight >}}

{{< success >}}
**Übung:** Erstelle eine *info.html*-Webseite und füge ein Bild von Dir ein. Wenn Du noch Zeit hast, schreib eine Kurzbeschreibung über Dich. Gestalte den Text mit <a href="http://webdesign.phlow.de/html-absaetze-ueberschriften-zeilenumbruch/">Überschriften und Absätzen</a>
{{< /success >}}
