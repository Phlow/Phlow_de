---
subtitle              : HTML Grundlagen
title                 : Absätze mit <p> und Zeilenumbrüche mit <br>
description           : Absätze mit dem HTML-Tag p gestalten
categories            : html-grundlagen
---
Lange Texte unterteilst Du mit Absätzen und Zeilenumbrüchen, damit sie von Deinen Besuchern besser gelesen werden können. Zum Einsatz kommen hierfür die beiden HTML-Befehle `<p>` für  Absätze und `<br>` Zeilenumbrüche.
<!-- readmore -->

## Mit `<p>` unterteilst Du lange Texte in Abschnitte

Absätze unterteilen einen längeren Text in Gedankenabschnitte. Ein bis zwei Gedanken pro Absatz ist ein hilfreiches Maß. Lesen Deine Besucher Texte von Dir auf einem Smartphone helfen regelmäßig unterteilte Texte beim außerdem beim Scrollen.

Vermeide darum Textwüsten, bei denen Leser schnell die Übersicht verlieren. Außerdem erfassen Deine Leser Texte schneller, wenn Du Sie in »Häppchen« gliederst. Das hat unter anderem auch den psychologischen Effekt, dass Besucher mehr das Gefühl erhält, dass er es schafft. So eine Art Belohnungseffekt pro Absatz.

{% highlight html %}
<p>Ein ganz einfacher Absatz.</p>
{% endhighlight %}


## Einfache Zeilenumbrüche mit `<br>`

Möchtest Du z.B. auf der Webseite Deines Impressums eine Adresse darstellen, dann erzielst Du schönere Resultate, wenn Du einen Zeilenumbruch mit `<br>` erzeugst.

Während bei guter Typografie zwischen Absätzen mehr Platz als ein einfacher Zeilenumbruch ist – siehe diese Webseite als Beispiel –, zwingst Du einfachen Zeilenumbruch mit einem `<br>`-Tag (Break). Das `<br>`-Tag gehört zu den so genannten _standalone tags_ und muss nicht wieder geschlossen werden. Und so formatierst Du z.B. eine Adresse:

{% highlight html %}
<p>
Kölner Dom<br>
Domkloster 4<br>
50667 Köln<br>
Deutschland<br>
</p>
{% endhighlight %}

Das Ergebnis sieht dann so aus:

Kölner Dom  
Domkloster 4  
50667 Köln  
Deutschland  

{{< success >}}
**Übung:** Gliedere Dein Impressum mit Absätzen, Überschriften und Zeilenumbrüchen. Öffne die anderen Seiten und gib allen Dokumenten eine &lt;h1&gt;-Überschrift.
{{< /success >}}
