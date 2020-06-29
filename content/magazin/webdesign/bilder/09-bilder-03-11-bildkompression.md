---
title               : 'Schnelle Bilder: Bilder optimal komprimieren'
subtitle            : Übertragung & Kompression
categories          : bilder
weight              : 0941
image:
  header            : /images/webdesign/bildkompression1920x440.jpg
  header_width      : 1920
  header_height     : 440
  caption           : Foto von Alexandru Zdrobău
  url               : https://instagram.com/alexandru_zdrobau
slug                : bildkompression
youtube             : true
---
Es gibt hervorragende kostenlose Software, die Bilder verlustlos oder verlustbehaftet optimiert. Dadurch verringert sich die Dateigröße und die Webseite wird schneller geladen. Während das Programm _ImageOptim_ per Drag & Drop funktioniert, komprimiert das Terminal-Programm _Guetzli_ JPG-Bilder noch mehr.
<!--more-->

## Drag & Drop-Optimierung mit Imageoptim

Bilddateien wie JPG, PNG und GIF komprimiert man mit der kostenlosen Open Source-Software ImageOptim verlustfrei. Die Videoanleitung erklärt das Programm und wie man es für Bilder anwendet.

In meinen Tests wurden bereits mit Photoshop abgespeicherte und komprimierte Bilder noch ein weiteres Mal geschrumpft: meist zwischen 6% und 10%. Besonders für Webdesigner und Website-Besitzer ist ImageOptim interessant. Denn kleinere Bilddateien beschleunigen den Download einer Website, was besonders bei mobilen Geräten, wie Smartphones, viel Sinn macht.

Für Windows-Nutzer empfiehlt sich das kostenlose Bildkompressions-Programm FileOptimizer.

Download
:   ImageOptim für Mac
:   http://imageoptim.com/

FileOptimizer für Windows
:   http://nikkhokkho.sourceforge.net/static.php?page=FileOptimizer

{{< amp/youtube id="rTZEDv1VDPU" >}}

## Guetzli: Bildoptimierung auf der Kommandozeile

Mit der Open Source-Software [Guetzli](https://github.com/google/guetzli) komprimierst Du JPG-Bilddateien. Die Guetzli Kompression ist zwar nicht verlustlos, du siehst sie aber nicht. Der Guetzli-Algorithmus wurde von Google entwickelt. Die Installation ist etwas komplizierter und ich beschreibe die Installation im Folgenden nur für Mac OSX.

Bei der Guetzli-Kompression handelt es sich um eine verlustbehaftete Kompression. Doch die Artefakte, die durch die Kompression auftreten, nimmt das menschliche Auge nicht wirklich wahr. Dahingegen sind die JPG-Bilddateien auffällig kleiner als die Ausgangsdatei, was für Websites einen Geschwindigkeitsgewinn darstellt, vor allem natürlich bei mobilen Websites.

## Guetzli auf dem Mac installieren

Am einfachsten installierst Du Guetzli auf einem Mac über das Terminal mit [Homebrew](https://brew.sh). Der Paketmanager installiert Guetzli ohne Probleme.

{{< info >}}
Das Terminal findest Du auf dem Mac über Spotlight – <kbd>CMD + Leertaste + Terminal</kbd> oder unter _Programme › Dienstprogramme_.
{{< /info >}}

Wenn Du Homebrew noch nicht installiert hast, dann installierst Du Homebrew, indem Du den folgenden Befehl in das Terminal kopierst und die Eingabetaste drückst.

~~~
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
~~~

Dafür kopierst Du einfach die folgenden Befehle in das [Terminal](http://terminal.phlow.de). Nutzt Du ein anderes Betriebssystem, bietet Dir die [Guetzli GitHub Website](https://github.com/google/guetzli) genügend Alternativen.

~~~
brew update
brew install guetzli
~~~

## Guetzli arbeiten lassen

Guetzli ist nicht das schnellste Werkzeug – [mehr auf Heise.de](https://m.heise.de/newsticker/meldung/Googles-Guetzli-Encoder-schrumpft-JPEG-Bilder-um-ein-Drittel-3657823.html). Größere Bilddateien dauern schon einmal mehr als eine Minute, dafür können sich aber die Resultate sehen lassen und darauf kommt es an. Um ein Bild mit Guetzli umzuwandeln, tippst Du Folgendes ins Terminal:

~~~
guetzli original.jpg guetzli-version.jpg
~~~

Für das Bild zu diesem Beitrag habe ich sogar noch die Qualität auf 85 heruntergedreht. Dafür nutzt man die Option `-quality` auf welche ein Wert folgt. Bei einem Wert von weniger als _85_ beschwert sich Guetzli und verweigert die Kompression. Gleichzeitig fordert Dich Guetzli auf den Quellcode zu bearbeiten, wenn es denn sein muss.

~~~
guetzli -quality 85 original.jpg guetzli-version-q85.jpg
~~~

Ich finde es ein wenig irritierend, wenn man Guetzli arbeiten lässt, dass das Terminal einfach still bleibt. Das Werkzeug braucht nämlich pro Bild einiges an Zeit. Um zu sehen, ob Guetzli arbeitet und nicht abgestürzt ist, befiehlst Du Guetzli mit der Option `-verbose` die Ausgabe von Parametern, die bei der Arbeit des Programmes entstehen.

## Guetzli einen Stapel Bilder komprimieren lassen

Guetzli ersetzt in Zukunft höchstwahrscheinlich, dass von mir liebgewonnene [JPEG Mini](https://www.youtube.com/watch?v=ShLLqbASxwk), dass in der kostenlosen Desktop-Version die tägliche Kompression von 20 Bildern erlaubt. Bisher reichte das wunderbar fürs Bloggen. Mit Guetzli zieht aber jetzt die Möglichkeit ins Haus über eine einfache for-Schleife mal eben einen ganzen Ordner zu optimieren. Das dauert, aber dank Automation muss man nicht daneben stehen.

Eine einfache for-Schleife sieht dann so aus…

~~~
for i in *.jpg; do guetzli -quality 85 -verbose $i $i-guetzli-optimiert.jpg; done
~~~

## Bilder optimieren mit Gulp.js

Mit Gulp.js automatisiert man Prozesse. Ob Minifizierung von Javascript, CSS und HTML, verlustlose Optimierung von Bildern oder z.B. die Kompilierung von Sass-Dateien: Gulp erledigt diese Prozesse in einem Rutsch, überwacht Veränderungen und revolutioniert die eigene Webentwicklung.

[Gulp.js](http://gulpjs.com/) ist ein so genannter Task Runner basierend auf [Node.js](https://nodejs.org/de/).

Bei der Bildkompression hilft Gulp und automatisiert die lästige, aber äußerst wichtige Bildkompression. Ob verlustlose Kompression oder verlustbehaftete Kompression: Für jedes Bildformat setzt Gulp auf die etablierten freien Bibliotheken zurück.

Für die Optimierung von PNG-, JPG-, SVG- und GIF-Dateien stehen
verschiedene freie Bibliotheken zur Verfügung. Dazu gehören [pngquant], [OptiPNG], [JpegOptim] oder [Scour].

  [pngquant]: http://pngquant.org/
  [OptiPNG]: http://optipng.sourceforge.net/
  [JpegOptim]: https://github.com/tjko/jpegoptim
  [Scour]: http://www.codedread.com/scour/
