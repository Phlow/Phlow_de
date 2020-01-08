---
subtitle        : Serversteuerung
title           : So fügst Du  Favicon, Apple Icon und andere Icons Deiner Webseite hinzu
categories      : special
image:
  header        : 
  caption       : 
  url           : 
slug            : favicon
---
Das Favicon ist ein kleines Icon, Symbol oder Logo, das von Webbrowsern verwendet wird und oft in der Browserzeile angezeigt wird. Es gibt auch Icons für Tablets und mobile Geräte. Und so baust Du die Favicons in Deine Webseite ein.
<!--more-->

Favicons sind eine kleine Plage, wenn man Sie für alle Geräte richtig anbieten will. Früher waren Favicons 16x16 oder 32x32 Pixel groß. Mittlerweile gibt es für viele Geräte eigene Maßangaben.

### Die Größen der Icons

Die folgenden Befehle baust Du einfach im `<head>`-Bereich jeder Webseite ein. Die Maße für das jeweilige eigen findest Du über `sizes` heraus. Am Besten benennst Du die jeweiligen Icons direkt richtig mit Pixelmaßen. Dann kommst Du nicht durcheinander – z.B. _touch-icon-192x192.png_.

~~~
<!-- Für Chrome/Android: -->
<link rel="icon" sizes="192x192" href="touch-icon-192x192.png">
<!-- Für iPhone 6 Plus mit @3× Bildschirm: -->
<link rel="apple-touch-icon-precomposed" sizes="180x180" href="apple-touch-icon-180x180-precomposed.png">
<!-- Für iPad mit @2× Bildschirm unter iOS ≥ 7: -->
<link rel="apple-touch-icon-precomposed" sizes="152x152" href="apple-touch-icon-152x152-precomposed.png">
<!-- Für iPad mit @2× Bildschirm unter iOS ≤ 6: -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144x144-precomposed.png">
<!-- Für iPhone mit @2× Bildschirm unter iOS ≥ 7: -->
<link rel="apple-touch-icon-precomposed" sizes="120x120" href="apple-touch-icon-120x120-precomposed.png">
<!-- Für iPhone mit @2× Bildschirm unter iOS ≤ 6: -->
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114x114-precomposed.png">
<!-- Für the iPad mini und die erste und zweite iPad-Generation (@1× Bildschirm) iOS ≥ 7: -->
<link rel="apple-touch-icon-precomposed" sizes="76x76" href="apple-touch-icon-76x76-precomposed.png">
<!-- Für the iPad mini and the first- and second-generation iPad (@1× Bildschirm) iOS ≤ 6: -->
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-72x72-precomposed.png">
<!-- Für non-Retina iPhone, iPod Touch, und Android 2.1+ Geräte: -->
<link rel="apple-touch-icon-precomposed" href="apple-touch-icon-precomposed.png"><!-- 57×57px -->
~~~

Noch mehr Informationen bietet dir der Artikel [»Everything you always wanted to know about touch icons«](https://mathiasbynens.be/notes/touch-icons)

