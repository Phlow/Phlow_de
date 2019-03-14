---
subtitle: Webdesign
title: Website-Steuerung per Accesskey bzw. Tastaturkürzel
category: webdesign
url: /website-tastaturkuerzel-accesskey-einstellen-konfiguriere/
tags:
  - accesskey
  - Browser
  - firefox
  - internet explorer
  - opera
  - safari
  - tastenkombination
  - tatsturkürzel
---
**Schneller mit Tastaturkürzeln** &middot; Als Bildschirmarbeiter liebe ich Tastaturkürzel. Sie helfen mir effizienter und schneller zu arbeiten. Auch Webseiten kann man mit den so genannten Shortcuts ausstatten. Im (X)HTML-Code ist dafür das Attribut `accesskey` zuständig. Doof ist jedoch die Tatsache, dass man in sämtlichen Browser von Internet Explorer über Firefox und Flock bis hin zu Safari und Opera die Tastaturkürzel anders erreicht.<!-- readmore -->


Auf Webseiten surfe ich gerne mit Tastaturkürzeln, sofern vorhanden. Editiere ich zum Beispiel Einträge in der Wikipedia oder meinen eigenen Mediawiki-Installationen sind **`Alt + e`** und **`Alt + s`** meine &#8220;Hotkeys&#8221;. Mit dem einen Kürzel öffne ich den **E**ditor und mit dem anderen Tastaturkürzel **S**peichere ich meine Änderungen. Auch für Phlow nutze ich seit Jahren &#8220;Accesskeys&#8221;. Schaut einfach mal in die Navigation und drückt z.B. in Firefox Alt + Shift + m und sofern Ihr in den Normaleinstellungen arbeitet springt der Browser adhoc in die MP3-Rubrik.

Um einem Link einen Buchstaben mit dem Attribut `accesskey` zuzuweisen, erweitert Ihr einen Link einfach mit:

<pre>&lt;a accesskey="i" href="#link"&gt;Info&lt;/a&gt;</pre>

Damit der versierte Besucher die Tastaturkürzel erkennen, benutze ich das alte Windows-Schema und unterstreiche den jeweiligen Buchstaben. Dazu setze ich für Links in der Navigation `border` und `text-decoration` auf `none`. Den Buchstaben klammer ich mit dem `<span>`-Tag ein und den &#8220;style&#8221; ich dann mit `border-bottom`.

Um außerdem jedem Link einen &#8220;Tooltip&#8221; bei einem Mouse-Over zu verpassen, ergänze ich den Link auch noch um ein `title`-Attribut, in welchem ich neben der Erklärung zum Link auch noch die Tastenkombination erwähne. Abgeschaut habe ich mir das bei der Wikipedia-Software. Ein Link sieht dann so aus:

<pre>&lt;<span class="start-tag">a</span><span class="attribute-name"> accesskey</span>="<span class="attribute-value">m" </span><span class="attribute-name">title</span>=<span class="attribute-value">"MP3 Musik Downloads! [ALT + m]"
</span><span class="attribute-name">href</span>=<span class="attribute-value">"#link"</span>&gt;&lt;span&gt;M&lt;/span&gt;P3 Downloads&lt;/<span class="end-tag">a</span>&gt;</pre>

<img class="alignnone size-full wp-image-94" title="funky-tastatur-2" src="{{ site.url }}/images/funky-tastatur-2.jpg" alt="" width="500" height="281" />

## Tastaturkürzel in Opera, Firefox, Internet Explorer und Safari

Was ein wenig nervt, dass man in jedem Browser die Accesskeys unter einer andern Tastenkombination erreicht.

### Webseiten-Tastaturkürzel im Firefox

In Firefox 2 ist das in den Standardeinstellungen Alt + Shift + Buchstabe. Diese unnötige Komplikation behebt Ihr einfach in dem Ihr in der URL-Adressleiste die Einstellungen von Firefox aufruft. Das geschieht mit `about:config`. Gebt anschließend im Filter access ein und vertauscht dann die beiden Werte von generalAccessKey und menuAccessKey. Anschließend surft Ihr Webseiten mit Alt + Buchstabe.

### Webseiten-Tastaturkürzel im Internet Explorer

Meine alte Internet Explorer-Möhre erlaubt den Zugang zu Links per Alt-Taste, erfordert aber einen abschließenden bestätigenden festen Druck auf die Enter-Taste.

### Webseiten-Tastaturkürzel im Safari

Um mit Safari Accesskeys zu nutzen, drückt Ihr anstelle der Alt die Ctrl-Taste, also Ctrl + Buchstabe.

### Webseiten-Tastaturkürzel im Opera

Besonders bescheuert handhabt Opera die Tastaturkürzel. Warum man sich beim skandinavischen Vorzeige-Browser so blöd verbiegen muss, ist mir nicht klar. Also, um Tastaturkürzel zu nutzen geht Ihr wie folgt vor:

1.  Umschalt/Shift+ ESC
2.  Buchstabe
3.  Enter

Bescheuert? Definitiv. Einziger positiver Pluspunkt ist, dass Opera sämtliche Kürzel für die jeweilige Website anzeigt, wenn man Umschalt/Shift+ ESC drückt.

 [1]: http://phlow.net/magazin/netzkultur/technik/92-website-tastaturkuerzel-accesskey-einstellen-konfiguriere