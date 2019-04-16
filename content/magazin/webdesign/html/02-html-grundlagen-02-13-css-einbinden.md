---
subtitle:    'Webdesign Grundlagen'
title:          '#013 CSS in HTML einbinden'
video:          'https://www.youtube.com/watch?v=3Jdi-TpGLEA'
image:          '013-css-einbinden.jpg'
categories:     css
published: false
---
Mit CSS (Cascading Stylesheets) gestaltest Du HTML-Webseiten. Wie Du CSS in HTML-Webseiten nutzt, um Text, Layout und Elemente zu gestalten, zeigt das Video.
<!-- readmore -->

CSS steht für *Cascading Style Sheets* und ist eine Formatierungssprache für HTML- und XML-Dokumente. Mit CSS erstellst Du Gestaltungsanweisungen für HTML-Seiten, wie z.B. Farben, Schriftart oder Höhe und Breite von HTML-Elementen. Mit den CSS-Angaben überschreibst Du die vom Browser vorgegebenen Formatierungen.

Es gibt drei Möglichkeiten die CSS-Anweisungen in eine HTML-Seite einzubinden:

1. im `<head>`-Bereich eines HTML-Dokumentes
2. direkt im Quellcode per style-Attribut
3. in eine externe CSS-Datei mit der Endung *.css*

Die dritte Variante ist allen anderen Varianten stets vorzuziehen, da Du die externe CSS-Datei mit allen HTML-Dokumenten verknüpfen kannst und sich Anweisungen in der CSS-Datei auf alle verknüpften Dokumente aus wirken.



## CSS-Anweisungen im `<head>`-Bereich einbinden

{% highlight html %}
<style type="text/css">
body {
    background: blue;
}
</style>
{% endhighlight %}



## CSS-Anweisungen direkt im Quellcode per style-Attribut einbinden

{% highlight html %}
<h1 style="color: orange;">Überschrift</h1>
{% endhighlight %}



## Externe CSS-Datei mit HTML-Seite verbinden

{% highlight html %}
<link rel="stylesheet" href="styles.css">
{% endhighlight %}



{% include alert success='**Übung:** Erstelle eine CSS-Datei und verknüpfe sie mit allen HTML-Dokumenten, die Du bereits angelegt hast.' %}
