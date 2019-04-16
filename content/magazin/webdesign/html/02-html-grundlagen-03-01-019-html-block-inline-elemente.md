---
subtitle:    'Webdesign Grundlagen'
title:          '#019 HTML: Die Block- und Inline-Elemente div und span'
video:          ''
categories:     css
published: false
---
HTML-Block-Elemente und HTML-Inline-Elemente bilden die Grundlage einer Webseite. Den Unterschied und die Funktionsweise erklärt Dir das Video.
<!-- readmore -->


## Blockelemente

Block-Elemente sind mit einem Zeilenumbruch vor und nach dem Element formatiert. Dadurch entsteht ein eigenständiger Block, den Du mit CSS gestalten kannst.

Z.B. gehören Absätze und Überschriften zu den Block-Elementen. So stellt der Browser z.B. Überschriften wie `<h1>` in einer eigenen Zeile dar. Das nächste Element beginnt dann unterhalb der Überschrift dank des Zeilenumbruches.



## Inline-Elemente

Inline-Elemente können sich innerhalb von Block-Level Elemeten oder anderen Inline-Elementen befinden. Im Gegensatz zu Block-Elementen macht der Browser keinen Zeilenumbruch vor oder nach einem Inline-Element.

Das meist-genutzte Inline-Element ist der Link. Aber auch Inline-Elemente wie `<strong>` und `<em>` findest Du oft im HTML-Quelltext.


## HTML-Elemente als Inline- oder Block-Elemente definieren

Um die Voreinstellungen eines HTML-Elementes zu ändern gibt es den CSS-Befehl `display`. Mit der Eigenschaft `display` legst Du fest, welche Art von Box von einem Element erzeugt wird. Jedes Element kann Null oder mehr Boxen erzeugen.

`display: inline;`
:   erzeugt eine oder mehrere Inline-Boxen

`display: block;`
:   Block-Boxen nehmen die gesamte Breite des Elternelementes ein. Sie sind so hoch, wie ihr Inhalt.

`display: none;`
:   Mit `display: none;` erzeugst Du keine Box und kannst Elemente ausblenden. Dadurch wird das Element unsichtbar.

`display: inline-block;`
:   `inline-block;` erzeugst Du eine Box, die Eigenschaften von Inline- und Block-Boxen kombiniert.


Mehr Informationen: <https://wiki.selfhtml.org/wiki/CSS/Eigenschaften/Anzeige/display>


{% include alert success='**Übung:** ' %}
