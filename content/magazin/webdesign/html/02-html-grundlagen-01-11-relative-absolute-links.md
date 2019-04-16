---
subtitle        : 'Webdesign Grundlagen'
title           : '#011 HTML: Relative und Absolute Links'
video           : 'https://www.youtube.com/watch?v=PhTp17k5hFY'
image           : '011-html-relative-absolute-links.jpg'
categories      : html
published       : false
---
Es gibt mehrere Arten Dateien, Dokumente und Bilder in HTML-Dokumenten zu verlinken. Was absolute und relative Links sind, erklärt das Video.
<!-- readmore -->


## Relative Links auf Dateien

Wenn man eine Datei verlinkt, sucht der Computer die Datei im gleichen Verzeichnis.

{% highlight html %}
<a href="relativ.html">Relativer Link</a>
{% endhighlight %}


## Datei in einem Verzeichnis verlinken

Eine Datei in einem *Unter*Verzeichnis verlinken.

{% highlight html %}
<a href="ordner/index.html">Relativer Link</a>
{% endhighlight %}


## Datei in einem übergeordneten Verzeichnis verlinken

Eine Datei in einem *übergeordneten* Verzeichnis verlinken.

{% highlight html %}
<a href="../ordner/index.html">Relativer Link</a>
{% endhighlight %}




## Absolute Pfadangabe relativ zur Basis-URI

Wenn die gewünschte Datei auf dem gleichen Host-Rechner liegt und über das aktuelle Protokoll und den Standard-Port erreichbar ist, kannst Du absolute Pfadangaben relativ zur Basis-URI nutzen.

{% highlight html %}
<a href="/">Absoluter Link auf http://phlow.de/</a>
<a href="/index.html">Absoluter Link auf http://phlow.de/</a>
<a href="/img/hintergrund.gif">Absoluter Link auf http://phlow.de/</a>
{% endhighlight %}


## Absolute Links

Ein absoluter Link verlinkt eine Datei mit seinem kompletten Pfad.

{% highlight html %}
<a href="http://phlow.de/">Absoluter Link auf http://phlow.de/</a>
{% endhighlight %}







{% include alert success='**Übung:** Sortiere Dein Projekt und verlinke die Dokumente, Bilder und Dateien korrekt.' %}
