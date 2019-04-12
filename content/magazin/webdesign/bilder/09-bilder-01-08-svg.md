---
title                 : Das SVG-Bildformat
subtitle              : Format der Zukunft
categories            : bilder
weight                : 0905
---
SVG-Bilder sind Vektorgrafiken. Im Gegensatz zu anderen Bildformaten, werden nicht Pixel, sondern Pfade abgespeichert. SVG-Bilder kannst Du animieren, über HTML/CSS manipulieren und werden die Grafiken vergrößert, bleiben die Ränder  immer scharf.
<!-- readmore -->

Die Dateiendung ist .svg steht für *Scalable Vector Graphics*, was man mit *skalierbare Vektorgrafik* übersetzen könnte. Das bedeutet, dass SVG-Grafikdateien ohne Probleme in ihrer Größe vergrößert oder verkleinert – als skaliert – werden können, ohne dass die Grafiken an den Rändern unscharf werden. Die Dateigröße bleibt bei richtigem Einsatz moderat und SVG-Bilder sehen auf Retina-Bildschirmen hervorragend aus. Außerdem eignen sich SVG-Grafiken für Interaktivität und können mit Filtern manipuliert werden.

## SVG-Grafiken in HTML einbauen

Wie alle anderen Bildformate auch, lassen sich SVG-Dateien mit dem `<img>`-Befehl einsetzen:

    <img src="bild.svg" alt="">

SVG-Dateien können natürlich auch als Hintergrundbild genutzt werden. Dabei musst Du darauf achten, dass das Bild Dimensionen erhält. Mit `background-size: contain;` befiehlt man dem Browser das Bild über das gesamte `body`-Tag zu ziehen.


    body {
      background: url(bild.svg);
      background-size: contain;
    }

Genauere Informationen für die Manipulation der Größe findest Du auf der Website von Mozilla unter [»Scaling of SVG backgrounds«](https://developer.mozilla.org/en-US/docs/Web/CSS/Scaling_of_SVG_backgrounds).

|  Vorteile   |  Nachteile   |
|---|---|
| animierbar                      | funktioniert nicht in IE 8 und Browsern unterhalb von Android 2.3  |
| Größe, Farben manipulierbar        |  |
| im Texteditor editierbar       |  |
| Einsatz direkt in HTML-Dokumenten       |  |

## Weiterführende Beiträge

* [Using SVG](https://css-tricks.com/using-svg/)
* [Everything You Need To Know About SVG](https://css-tricks.com/lodge/svg/)
