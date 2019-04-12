---
title                     : Das JPG-Bildformat
subtitle                  : Standard für detaillierte Bilder
categories                : bilder
image:
  header                  : /images/webdesign/jpg-bildformat_21_9.jpg
  caption                 : Foto von Alexandru Zdrobău
  url                     : https://instagram.com/alexandru_zdrobau
weight: 0902
---
Das JPG-Bildformat (auch JPEG) verwendest Du, wenn Du Fotos oder Bilder mit vielen Details auf einer Website darstellen will. Kein anderes Bildformat speichert detaillierte Bilder besser bzw. kleiner als JPG ohne, dass die Qualität zu sehr darunter leidet.
<!-- readmore -->

Das JPEG-Bildformat wurde im September 1992 von der Joint Photographic Experts Group (JPEG) entwickelt und nach ihr benannt. Das Gremium entwickelte JPEG als standardisiertes Verfahren zur sowohl *verlustbehafteten* wie *verlustlosen* Kompression von digitalen Bildern.

## Das JPG-Bildformat eignet sich besonders für…

Grundsätzlich gilt als Leitfaden bei allen Bildkompressionsverfahren: **Je mehr Details ein Bild aufweist, desto größer wird die Datei.** Bei großer Detaildichte, zum Beispiel bei Fotos oder fotorealistischen Grafiken, sollte JPEG das Format der Wahl sein. JPEG-Bilder setzt Du am Besten für die Kompression von Fotos und Bildern ein.

Dahingegen eignet sich das JPEG-Dateiformat nicht für den Einsatz bei Bildern wie Logos und Hintergründen mit einfarbigen Großflächen. Denn bei der Kompression einfarbiger Großflächen entstehen unschöne Artefakte insbesondere an den Rändern und auf der Fläche.

## Verlustbehaftete Kompression

JPG-Bilder werden komprimiert. Je nachdem wie hoch Du die Kompression wählst, – um kleinere Dateigrößen zu erreichen – um so mehr Daten gehen verloren. Das kannst Du Dir ungefähr so vorstellen: Je mehr Du ein DINA4-Blatt kleindrückst, desto mehr zerknitterst Du das Blatt. Beim Auseinanderfalten kannst Du die Knitterstreifen nicht mehr beseitigen.

Ähnlich arbeitet das Bildbearbeitungsprogramm, wenn es JPG-Bilder komprimiert und Informationen rausrechnet. Die Informationen sind weg. Das beudetet auch, dass Du aus kleingerechneten Dateien nicht mehr die Originaldatei zurückholen kannst.

In den folgenden beiden Bildern siehst Du was bei der Kompression passiert. Das linke Bild wurde mit 60% komprimiert und das rechte Bild mit krassen 10%. Während das 60% Bild <mark>33.000 Byte (37 KB)</mark> groß ist, ist das 10% Bild nur <mark>10.468 Byte (12 KB)</mark> groß. Das 60%-Bild ist also dreimal so groß, wie das 10%-Bild.

Beim genauen Hinschauen siehst Du aber, wie das junge Mädchen durch das Bildkompressionsverfahren im rechten 10%-Bild gealtert ist. Persönlich nenne ich das immer JPG-Akne.

{{< amp/fig src="/images/webdesign/jpg-kompression-640x360.jpg" width="640" height="360" figcaption="Unterschiedlich hohe Kompression: links 60%, rechts 10%" >}}

Um die Kompression zu verdeutlichen, habe ich die Bilder noch einmal um 300% vergrößert. Dadurch siehst Du deutlich die quadratischen Bildartefakte. Diese entstehen durch die Kompression, da der Algorithmus Bildbereiche zusammenrechnet, um auf eine kleine Bilddateigröße zu kommen.

{{< amp/fig src="/images/webdesign/jpg-kompression-bildartefakte640x360.jpg" width="640" height="360" figcaption="Bildartefakte: Zum besseren Vergleich um 300% vergrößert" >}}

Die Bilder kannst Du Dir auch noch einmal einzeln im Browser anschauen: <a href="{{ '/images/webdesign/jpg-kompression-60.jpg' | absolute_url }}" target="_blank">JPG-Bildkompression 60%</a> und <a href="{{ '/images/webdesign/jpg-kompression-10.jpg' | absolute_url }}" target="_blank">JPG-Bildkompression 10%</a>

## Wieviel Kompression solltest Du nutzen?

> Attraktive und detaillierte Bilder erhälst Du mit einer Kompressionsrate von 60-80%.

Um attraktive Bilder mit einer guten Schärfe und wenig Artefakten zu erhalten, empfehle ich Dir eine Kompression zwischen 60% und 80%. Je nachdem, wieviele Bilder Du auf einer einzelnen Webseite positionierst, würde ich mehr oder weniger komprimieren.

{{< info >}}
Um eine Website für mobile Nutzer zu optimieren, ist die einfachste Maßnahme, die Bilder kleinzurechnen. Große Bilder verlangsamen den Download einer einzelnen Webseite ungemein. Und Besucher sind ungeduldig. Selten warten Besucher länger als 5 Sekunden auf eine Webseite. Vor allem dann, wenn sie über eine Suchmaschine Deine Webseite finden.
{{< /info >}}

## Vor- und Nachteile des JPG-Bildformates

|  Vorteile   |  Nachteile   |
|---|---|
| beste Format für Fotos und detaillierte Bilder  | keine transparenten Grafiken möglich  |
|          | nicht geeignet für flächige Grafiken wie Logos oder Vektorgrafiken (PNG, GIF und SVG sparen mehr Platz) |
|         |  |
|         |  |
