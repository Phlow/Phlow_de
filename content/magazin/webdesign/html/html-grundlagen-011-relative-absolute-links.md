---
weight            : 011
subtitle          : HTML-Grundlagen
title             : 'HTML: Relative und Absolute Links'
youtube           : PhTp17k5hFY
image:
    title         : /images/webdesign/011-html-relative-absolute-links-1280x720.jpg
categories        : html-grundlagen
slug              : relative-absolute-links
---
Es gibt mehrere Arten Dateien, Dokumente und Bilder in HTML-Dokumenten zu verlinken. Was absolute und relative Links sind, erklärt das Video.
<!--more-->

## Relative Links auf Dateien

Wenn man eine Datei verlinkt, sucht der Computer die Datei im gleichen Verzeichnis.

{{< highlight html >}}
<a href="relativ.html">Relativer Link</a>
{{< /highlight >}}

## Datei in einem Verzeichnis verlinken

Eine Datei in einem *Unter*Verzeichnis verlinken.

{{< highlight html >}}
<a href="ordner/index.html">Relativer Link</a>
{{< /highlight >}}

## Datei in einem übergeordneten Verzeichnis verlinken

Eine Datei in einem *übergeordneten* Verzeichnis verlinken.

{{< highlight html >}}
<a href="../ordner/index.html">Relativer Link</a>
{{< /highlight >}}

## Absolute Pfadangabe relativ zur Basis-URI

Wenn die gewünschte Datei auf dem gleichen Host-Rechner liegt und über das aktuelle Protokoll und den Standard-Port erreichbar ist, kannst Du absolute Pfadangaben relativ zur Basis-URI nutzen.

{{< highlight html >}}
<a href="/">Link auf http://phlow.de/</a>
<a href="/index.html">Link auf http://phlow.de/</a>
<a href="/img/hintergrund.gif">Link auf http://phlow.de/img/hintergrund.gif</a>
{{< /highlight >}}

## Absolute Links

Ein absoluter Link verlinkt eine Datei mit seinem kompletten Pfad.

{{< highlight html >}}
<a href="https://phlow.de/">Absoluter Link auf http://phlow.de/</a>
{{< /highlight >}}

{{< success >}}
**Übung:** Sortiere Dein Projekt und verlinke die Dokumente, Bilder und Dateien korrekt.
{{< /success >}}

