---
title: 'Lösung: Google Fonts-URL erzeugt Fehler im HTML5-Validator'
date: 2018-06-22T12:32:11+00:00
categories:
  - Webdesign
tags:
    - html
    - css
    - google fonts
---
Baut man einen Webfont via <a href="http://www.google.com/fonts/">Google Fonts</a> in seine Website ein, dann provoziert man mit dem vorgegebenen Code bzw. der mitgelieferten URL einen Fehler im <a href="http://validator.w3.org/">HTML-Validator des W3C-Consortiums</a>. Zum Glück gibt es eine einfache Lösung.<!--more-->

<img class="alignnone size-full wp-image-77" src="https://phlow.de/blog/wp-content/uploads/validator.png" alt="" width="722" height="161" />
<h2 id="lösung-utf-8-enkodierung">Lösung: UTF-8-Enkodierung</h2>
Der Fehler liegt am Zeichen <code class="highlighter-rouge">|</code>. Dieses muss man ersetzen mit <code class="highlighter-rouge">%7c</code>, sprich mit der korrekten UTF-8-Enkodierung. Dann validiert das Dokument auch 1a im HTML-Validator.

{{< highlight css >}}
<link href="http://fonts.googleapis.com/css?family=Inconsolata:400,700%7cOpen+Sans:400italic,400,300,700,800" rel="stylesheet" type="text/css">
{{< /highlight >}}

