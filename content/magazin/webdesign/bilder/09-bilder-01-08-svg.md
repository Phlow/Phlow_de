---
subtitle              : Format der Zukunft
title                 : Das SVG-Bildformat
meta_title          : 'Das SVG-Bildformat erklärt – So funktioniert die Vektorbilder'
meta_description    : 'SVG-Bilder sind Vektorgrafiken. Im Gegensatz zu anderen Bildformaten, werden nicht Pixel, sondern Pfade abgespeichert.'
categories            : bilder
weight                : 0905
slug            : svg
---
SVG-Bilder sind Vektorgrafiken. Im Gegensatz zu anderen Bildformaten, werden nicht Pixel, sondern Pfade abgespeichert. SVG-Bilder kannst Du animieren, über HTML/CSS manipulieren und werden die Grafiken vergrößert, bleiben die Ränder  immer scharf.
<!--more-->

Die Dateiendung ist .svg steht für *Scalable Vector Graphics*, was man mit *skalierbare Vektorgrafik* übersetzen könnte. Das bedeutet, dass SVG-Grafikdateien ohne Probleme in ihrer Größe vergrößert oder verkleinert – als skaliert – werden können, ohne dass die Grafiken an den Rändern unscharf werden.

Die Dateigröße bleibt bei richtigem Einsatz moderat und SVG-Bilder sehen auf Retina-Bildschirmen hervorragend aus. Außerdem eignen sich SVG-Grafiken für Interaktivität und können mit Filtern manipuliert werden.

## SVG-Grafiken in HTML einbauen

Wie alle anderen Bildformate auch, lassen sich SVG-Dateien mit dem `<img>`-Befehl einsetzen. Und laut [*Can I use?*](http://caniuse.com/svg) unterstützen alle wichtigen modernen Browser das Format:

    <img src="rakete.svg" alt="Rakete">

{{< amp/img src="/images/webdesign/rakete.svg" alt="Rakete" width="120" height="120" layout="fixed" >}}

**Eine herausragende Eigenschaft von svg-Bildern** ist die Möglichkeit, das Bild direkt in den HTML-Code zu schreiben, ähnlich wie bei [Base64-Bildern]( {{< ref "09-bilder-01-10-base64-bilder.md" >}}). So baut der folgende direkt im HTML-Dokument eingebaute Code, ein SVG-Bild ein.

    <svg id="phlow" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="82" height="30" viewBox="0 0 293.75 106.945"><defs><path id="SVGID_1_" d="M8.217 4.48h279.285v86.318H8.217z"></path></defs><clipPath id="SVGID_2_"><use xlink:href="#SVGID_1_" overflow="visible"></use></clipPath><path clip-path="url(#SVGID_2_)" d="M57.536 24.235c6.72 0 11.53 1.905 11.53 6.314 0 7.822-12.732 21.256-25.564 21.256.7-4.217 9.622-22.863 11.63-27.475.803-.096 1.6-.096 2.404-.096m-29.47 17.143c-6.018 14.335-12.13 29.873-12.13 36.89 0 8.02 7.818 12.53 14.336 12.53 1.6-12.33 7.017-23.058 10.82-32.78 1.305 4.912 2.613 8.82 8.228 8.82 18.244 0 38.995-19.342 38.995-36.484 0-18.446-21.558-22.758-35.79-22.758-21.35 0-44.308 10.325-44.308 25.87 0 3.804 1.3 7.92 4.413 12.23.996-7.322 13.527-14.437 26.565-18.346-5.014 3.695-9.025 9.01-11.13 14.027m92.528-27.468c.7 0 1.102.695 1.102 2.405 0 3.307-3.007 9.82-12.43 14.936 3.01-7.316 7.52-17.34 11.328-17.34M105.555 40.97c14.937-3.308 28.568-16.74 28.568-27.27 0-5.513-4.61-9.223-13.937-9.223-18.04 0-20.05 15.24-24.96 27.57l-1.906 4.71c-2.503.5-8.42 1.175-11.32 1.476 2.002 1.297 7.408 1.934 9.72 2.534-7.022 17.042-14.543 34.785-14.543 38.694 0 6.916 5.517 9.626 12.136 9.626 5.51-21.66 19.748-40.606 27.667-40.606-3.503 6.32-11.426 20.852-11.426 30.78 0 5.31 1.3 10.927 9.727 10.927 9.827 0 21.085-12.83 22.39-21.253-2.11 1.705-9.763 4.908-12.766 4.908-1.297 0-2.2-.696-2.2-2.406 0-7.818 12.228-20.35 12.228-28.47 0-5.816-4.01-7.92-9.023-7.92-7.018 0-21.05 11.327-24.26 16.642 1.404-4.007 2.606-7.513 3.907-10.722m29.673 35.19c0 7.517 4.908 14.533 12.327 14.533 1.41 0 5.99.315 11.07-1.713-5.08-3.05-8.563-5.905-8.563-10.52 0-21.354 23.96-53.732 23.96-62.655 0-5.308-7.625-8.92-12.737-8.92-.7 0-1.405.1-2.007.203.203.398.3 1.004.3 1.605.007 11.03-24.35 52.027-24.35 67.466m57.244-23.86c0 8.52-8.825 22.656-15.14 22.656-2.31 0-3.307-1.605-3.307-3.91 0-5.313 5.507-14.436 13.433-16.747-3.21-3.308-6.622-4.707-10.03-4.707h-.602c2.91-2.405 6.42-3.71 9.325-3.71 3.507 0 6.32 2.004 6.32 6.417m-33.487 22.454c0 8.126 7.622 14.342 15.14 14.342 19.648 0 34.088-23.56 34.088-40.7 0-11.234-6.818-15.843-15.237-15.843-13.136 0-29.88 11.23-29.88 25.968v.904c-2.502 4.306-4.11 9.618-4.11 15.33m78.39-1.597c0 10.52 5.115 15.64 11.13 15.64 15.84 0 38.995-43.313 38.995-64.666 0-7.316-3.81-10.925-9.123-10.925-3.203 0-6.813 1.203-10.627 3.71 2.71 3.41 3.71 8.014 3.71 13.132 0 16.937-11.728 39.495-17.544 39.495-.603 0-.903-.6-.903-1.807 1.502-9.818 7.115-19.85 7.115-27.065 0-5.11-7.717-8.122-11.828-8.122-2.406 8.618-11.326 35.99-20.846 35.99-.512 0-.707-.7-.707-2.205 0-5.313 5.913-19.746 5.913-25.06 0-6.82-7.715-8.924-12.83-9.025-2.31 16.038-10.127 34.086-10.127 43.708 0 7.02 4.92 12.835 10.828 12.835 6.22.005 12.132-8.42 16.84-15.63"></path></svg>

Diese Technik nutzen wir bei Phlow, um das Phlow-Logo direkt in den HTML-Code einzubetten.

SVG-Dateien können natürlich auch als Hintergrundbild genutzt werden. Dabei musst Du darauf achten, dass das Bild Dimensionen erhält. Mit `background-size: contain;` befiehlt man dem Browser das Bild über das gesamte `body`-Tag zu ziehen.


    body {
      background: url(hintergrundbild.svg);
      background-size: contain;
    }

## EPS in SVG mit Illustrator umwandeln

Die folgenden Tutorials erklären einfach und verständlich wie man SVG über Illustrator korrekt abspeichert. Und diese [Stackoverflow-Antwort](http://stackoverflow.com/questions/13236365/optimal-settings-for-exporting-svgs-for-the-web-from-illustrator#answer-13238555) fasst noch einmal die wichtigsten Punkte zusammen. Der dritte Artikel bietet weitere hilfreiche Tipps für das Styling von SVGs.

*   [»SVG Export Settings for the Web with Adobe Illustrator«](http://www.joshuawinn.com/svg-export-settings-for-the-web-with-adobe-illustrator/)
*   [»Saving better SVG files«](https://coderwall.com/p/gq3sbg)
*   [»Using SVG«](http://css-tricks.com/using-svg/)

## SVG-Dateien komprimieren

Da es sich bei SVG-Dateien eigentlich um XML-Dateien handelt, schreiben einige Programme jede Menge Anmerkungen zusätzlich in die SVG-Datei, die nur Speicher verbrauchen. Mit dem Online-Werkzeug [SVGOMG](https://jakearchibald.github.io/svgomg/) minifizierst Du SVG-Dateien ohne Verluste.

|  Vorteile   |  Nachteile   |
|---|---|
| animierbar                      | funktioniert nicht in IE 8 und Browsern unterhalb von Android 2.3  |
| Größe, Farben manipulierbar        |  |
| im Texteditor editierbar       |  |
| Einsatz direkt in HTML-Dokumenten       |  |

## Lösung: Wenn WordPress SVG-Dateien den Upload verweigert

Achso, und wer SVG-Dateien mit WordPress nutzen möchte, der stößt erst einmal auf ein Upload-Problem. Die Lösung findet man bei Jonas Hellwig: [»SVG-Dateien in die WordPress-Mediathek hochladen«](http://blog.kulturbanause.de/2013/05/svg-dateien-in-die-wordpress-mediathek-hochladen/). Einfach das folgende Code-Schnipsel in die `functions.php`-Datei des Themes kopieren:

    // SVG Datei Upload erlauben
    function kb_svg ( $svg_mime ){
    $svg_mime['svg'] = 'image/svg+xml';
    return $svg_mime;
    }
    
    add_filter( 'upload_mimes', 'kb_svg' );

## Weiterführende Beiträge

* [Using SVG](https://css-tricks.com/using-svg/)
* [Everything You Need To Know About SVG](https://css-tricks.com/lodge/svg/)
* [»Scaling of SVG backgrounds«](https://developer.mozilla.org/en-US/docs/Web/CSS/Scaling_of_SVG_backgrounds).
