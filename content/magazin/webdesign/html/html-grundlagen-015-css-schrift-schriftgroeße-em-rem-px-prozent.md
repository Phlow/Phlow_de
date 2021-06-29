---
weight            : 015
subtitle          : 'Webdesign Grundlagen'
title             : 'CSS Schriftgröße mit font-size und em, rem, px, %'
youtube           : ddbpUiHd4aM
# image:
#     title         : /images/webdesign/015-css-schrift-schriftgroeße-em-rem-px-prozent-1280x720.jpg
categories:     css-grundlagen
slug              : schriftgroesse-em-rem-px-prozent
---
Das Video erklärt Dir, wie Du die Schriftgröße mit CSS für HTML-Dokumente bestimmst und welche Maßeinheiten es gibt und was der Unterschied zwischen px, em, rem und % ist, zeigt das Video.
<!--more-->

Um die Schriftgröße zu bestimmen, nutzt Du `font-size`.

## Absolute Schriftgrößen in Pixel mit px

{{< highlight css >}}
body {
    /* font-size › Schriftgröße in Pixel */
    font-size: 18px;
}
{{< /highlight >}}

## Relative Schriftgrößen mit em, rem und %

{{< highlight css >}}
h1 {
    /* font-size › Schriftgröße in em */
    font-size: 1.5em;
}
h2 {
    /* font-size › Schriftgröße in rem */
    font-size: 1.5rem;
}
h3 {
    /* font-size › Schriftgröße in Prozent */
    font-size: 150%;
}
{{< /highlight >}}

{{< success >}}
**Übung:** Passe die Schriftgröße von Fließtext und Überschriften Deinem Geschmack an oder erstelle eine Modular Scale mit <a href="http://www.modularscale.com/" target="_blank">www.modularscale.com</a>, deren Werte Du übernimmst.
{{< /success >}}
