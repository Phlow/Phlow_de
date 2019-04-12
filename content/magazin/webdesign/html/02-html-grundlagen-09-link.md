---
subheadline    : 'Webdesign Grundlagen'
title          : 'Der Link: Texte und Bilder verlinken'
video          : 'https://www.youtube.com/watch?v=3IwFRPHP6HE'
image          :
  header       : /images/html-links.jpg
categories     : html-grundlagen
---
Links (Verweise) machen das Internet zum Internet, indem Du Inhalte – also Webseiten – miteinander direkt verknüpfst. Mit dem HTML-Link-Befehl `<a>` webst Du das Netz.
<!-- readmore -->

Das kleine *a* in `<a>` steht für *anchor*, englisch für Anker. Denn Du kannst nicht nur Links mit `<a>` setzen, sondern innerhalb einer Seite auch Sprungmarken mit dem Linkbefehl verankern. Aber dazu später mehr.

Um Texte oder Bilder zu verlinken, musst Du Sie mit `<a>` umklammern:

~~~
<a>Linktext</a>
~~~

Jetzt weiß der Browser aber immer noch nicht, auf welche Webseite oder welche Datei der Link zeigen soll. Dafür brauchst Du das Attribut `href` und ein Ziel. *href* steht für *Hyperreference* (Verweisziel). Wenn Du also auf ein anderes HTML-Dokument verlinken möchtest, baut sich der Befehl so auf. Achte dabei darauf, dass das Linkziel immer von Anführungszeichen eingeklammert wird.

~~~
<a href="impressum.html">Linktext</a>
~~~

## Absolute Links

Im obigen Beispiel sucht der Browser die HTML-Seite *impressum.html* im gleichen Verzeichnis (Ordner), in welchem sich die HTML-Seite mit dem Link befindet. Wie aber verlinkst Du eine externe Webseite, z.B. *tagesschau.de*?

Um externe Webseiten zu verlinken, benötigst Du immer einen absoluten Link. Dazu gehört immer ein *http://* oder *http**s**://*.

Um die Tagesschau zu verlinken, setzt Du den Befehl so ein:

~~~
<a href="https://www.tagesschau.de/">Linktext</a>
~~~

## Relative Links

Es gibt aber auch relative Links. Bei relativen Links sucht der Browser die verlinkte Datei immer vom eigenen Standort aus. Den Standort des jeweiligen Dokumentes siehst Du immer in der Addressleiste.

Wenn z.B. eine HTML-Webseite auf meinem Schreibtisch liegt – also meinem Computersschreibtisch ;) – dann sehe ich in der Addressleiste folgende Adresse:

*file:///Users/moritz/Desktop/webseite.html*

Auch diese Webseite kann ich absolut verlinken. Das Problem entsteht aber, wenn Du die Webseite mit dem Link auf Deinem Rechner öffnest. Weil Dein Rechner eine andere Dateistruktur hat, wird er die Datei nicht finden und du erhälst anstelle dessen eine Fehlerseite des Browser.

<figure class="border-solid">
<img src="{{ '/images/html-browser-fehlerseite.png' | absolute_url }}" alt="">
<figcaption>Fehlerseite: Die Datei konnte vom Browser nicht gefunden und aufgerufen werden</figcaption>
</figure>

## Links in einem neuen Fenster öffnen mit target

{{< info >}}
Die zwei wichtigsten Attribute für einen Link – die Du Dir unbedingt merken soltest – sind *href* und *target*.
{{< /info >}}

## Attribute für den HTML-Link-Befehl a

Es gibt die folgenden Attribute:

|  Attribute  |  Erklärung |
|:-----|:-----|
| `href` | das href-Attribut (href = hyper reference) verwandelt das a-Element in einen Verweis. |
| `target` | …legt das Zielfenster für den Verweise fest – z.B. öffnet sich bei einem Klick bei `target="_blank"` ein neues Fenster oder ein Reiter (Tab) im Browser. |
| `title` | …bietet die Möglichkeit inhaltliche Hinweise zum Link zu geben – bei verlinkten Bildern, wird dann ein [Tooltip](https://wiki.selfhtml.org/wiki/Glossar:Tooltip) angezeigt. |
| `rel` | …gibt die logische Beziehungs zum Verweisziel an, z.B. `rel="nofollow"`, um keine Empfehlung für den Link auszusprechen. |
| `tabindex` | …legt die Reihenfolge an, in welcher Verweise mittels der Tabulator-Taste angesprungen werden. |
| `hreflang` | …gibt die Sprache des Linkzieles an. |