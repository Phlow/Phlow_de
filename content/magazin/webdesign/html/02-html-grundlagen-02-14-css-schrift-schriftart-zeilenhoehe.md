---
subtitle:    'Webdesign Grundlagen'
title:          '#014 CSS Schriftart und Zeilenhöhe'
video:          'https://www.youtube.com/watch?v=eVdpEh4bKdk'
image:          '014-css-schrift-schriftart-zeilenhoehe.jpg'
categories:     css
published: false
---
Mit `font-family` bestimmst Du die Schriftart für HTML-Elemente. Wie der CSS-Befehl funktioniert und worauf Du achten solltest, erklärt das Video.
<!-- readmore -->

> Der Eigenschaft `font-family` solltest Du mehrere Font-Namen als "Fallback"-Lösung übergeben, damit Du die maximale Kompatibilität zwischen den Browsern/Betriebssystemen gewährleisten kannst. Wenn der Browser die erste Schriftart nicht unterstützt, versucht er es einfach mit der nächsten Schriftart.

Eine komplette Sammlung von Internet-sicheren HTML/CSS-Schriften findest Du auf [cssfontstack.com](http://www.cssfontstack.com/). HTML/CSS-Schriften, die Du problemlos kombinieren kannst, bietet [www.w3schools.com](http://www.w3schools.com/cssref/css_websafe_fonts.asp) in einer Übersicht.



## Core fonts for the Web…

…war ein Projekt von Microsoft, das 1996 gestartet und im August 2002 eingestellt wurde. Das Ziel des Projektes war, eine Reihe von Schriftarten für den Gebrauch im Internet zu standardisieren.

Zu den *Core fonts for the Web* gehören:

Serif Schrift
:   Times New Roman
:   Georgia

Sans Serif Schrift
:   Arial
:   Arial Black
:   Verdana
:   Trebuchet MS
:   Comic Sans MS
:   Impact

Monospace Schrift
:   Courier New





## Sans Serif Schrift

{% highlight css %}
body {
    /* font-family › Schriftart festlegen */
    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;

    /* line-height › Höhe der Textzeile */
    line-height: 1.5;
}
{% endhighlight %}


## Serif Schrift

{% highlight css %}
h1,
h2,
h3,
h4,
h5,
h6 {
    font-family: Georgia, "Times New Roman", serif;
}
{% endhighlight %}



## Monospace Schrift

{% highlight css %}
pre, code {
    font-family: 'Lucida Console', Monaco, 'Courier New', monospace;
}
{% endhighlight %}




{% include alert success='**Übung:** Experimentiere mit den verschiedenen Schriften und wähle Dir eine oder zwei Schriftarten für Deine Webseiten aus.' %}
