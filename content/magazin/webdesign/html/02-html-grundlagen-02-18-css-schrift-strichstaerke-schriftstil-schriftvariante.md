---
subtitle:    'Webdesign Grundlagen'
title:          '#018 CSS Strichstärke, Schriftstil und Schriftvarianten'
video:          ''
categories:     css
published: false
---
Wie bestimmst Du normale, fette oder kursive Schrift? Wie transformierst Du automatisch kleine Buchstaben zu großen. Das Video zeigt's Dir.
<!-- readmore -->


## Strichstärke mit font-weight

Mit `font-weight` bestimmst du wie dick (fett) eine Schrift angezeigt werden soll. Meist nutzt man `bold` für fette oder `normal` für reguläre Schrift. Je nach Schrift kannst die Strichstärke aber noch genauer festlegen. Das machst du dann mit Zahlenwerten – z.B. mit `font-weight: 100;`.

{% highlight css %}
h1,
h2,
 {
    /* Strichstärke › Dicke und Stärke der Schrift */
    font-weight: normal;
}
h3,
 {
    /* Strichstärke › Dicke und Stärke der Schrift */
    /* Bei mehreren Schriftschnitten kommen Zahlen zum Einsatz. */
    /* Z.B. hat sehr dünne Schrift oft den Wert 100. */
    font-weight: 100;
}
{% endhighlight %}



## Schriftstil mit font-style

Ob eine Schrift normal, kursiv oder oblique angezeigt werden soll, legst Du mit `font-style` fest.

{% highlight css %}
h3 {
    /* font-style › Schriftstil festlegen mit normal, kursiv, oblique  */
    font-style: normal;
}
{% endhighlight %}




## Schriftvarianten mit font-variant

Mit `font-variant` befiehlst Du dem Browser alle Buchstaben als Großbuchstaben (Kapitälchen) ausgegeben zu lassen.

{% highlight css %}
h2 {
    /* font-variant › Schriftvariante Kapitälchen mit small-caps */
    font-variant: small-caps;
}
{% endhighlight %}


## Text formatieren mit text-transform

Mit `text-transform` kannst Du Text in Kleinbuchstaben, Großbuchstaben oder die Großschreibung des jeweils ersten Buchstaben erzwingen. Wie die Buchstaben tatsächlich im Dokument stehen, wird dabei ignoriert. Es gibt somit drei Varianten:

{% highlight css %}
h4 {
    /* text-transform › Text in Großbuchstaben umformatieren */
    text-transform: uppercase;
}
h5 {
    /* text-transform › Text in Kleinbuchstaben umformatieren */
    text-transform: lowercase;
}
h6 {
    /* text-transform › Erste Buchstabe jedes Worte als Großbuchstabe anzeigen */
    text-transform: capitalize;
}
{% endhighlight %}


{% include alert success='**Übung:** Verfeinere Deine Typografie und teste die verschiedenen Eigenschaften.' %}
