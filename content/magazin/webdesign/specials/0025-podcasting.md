---
subtitle        : 'Podcasting: Software & Websites'
title           : So produzierst Du Deinen eigenen Podcast
categories      : special
image:
  header        : /images/webdesign/podcast-software.jpg
slug            : podcast
---
Die Produktion eines Podcasts ist einfach. Mit diesen Tipps, Tricks und Quellen gelingt Dir die eigene Podcast-Produktion.
<!--more-->

{{< toc >}}

## Was ist Podcasting?

Ganz ähnlich wie der Beriff »Weblog« ist auch »Podcast« eine Wortneuschöpfung: Dieses Kunstwort setzt sich aus den Wörtern »iPod«, dem MP3-Player von Apple, und »broadcast«, dem englischen Wort für Sendung, zusammen. Podcasting gilt für viele als die neue Generation des Radios, denn man könnte es als eine Art zeitver­setztes Radiohören bezeichnen.

{{< amp/fig src="/images/webdesign/podcast-schema.png" figcaption="Podcasting Illustration" width="1000" height="421" >}}

Beim Podcasting werden Sendungen nicht live übertragen, sondern sie liegen zum Download auf einem Server abrufbereit vor. Auf diese Weise lassen sich einzelne Sendungen (auch *Episoden* genannt) problem­los downloaden und auf einen MP3-Player übertragen, so dass man sie immer mit sich trägt und genau dann hört, wenn man will. Podcast-Beiträge benutzen in der Regel die MP3-Technik.

## Podcast: Flexibler Radiohören

Der Vorteil gegenüber dem Radio liegt auf der Hand: Einen Podcast kann man nach dem Download nach Belieben vor- und zurückspulen oder einfach abbrechen, um zur nächsten Folge zu springen. Ein weiterer Vorteil ist die Tatsache, dass ein Podcast zu einem selbst bestimmten Zeitpunkt angehört werden kann – so oft man möchte. Dieser flexible Umgang unterscheidet Podcasting vom normalen Radio.

Besonders wertvoll ist die Eigenschaft, dass man bei normalen Podcasts im Archiv zurückwan­dern kann. Gefällt einem z.B. die aktuelle Folge von »Schlaflos in München«, kann man sich auch die bereits zurückliegenden Beiträge anhören. Ein weiterer Vorteil gegenüber dem Radio bilden Nischensendungen. Wo im alltäglichen Radio Nach­richten aus Subkulturen und kleinen Szenen fehlen, ermöglichen Podcasts die Berichterstattung selbst aus den kleinsten Nischen. Kein Wunder also, dass man in der immer größer werdenden Podcast-Welt so gut wie jedes Thema findet.

Ein Podcast selbst ist dabei nichts anderes als ein [RSS]({{ site.url }}/video/rss/)-Feed der Version 2.0. RSS ist ein auf XML basierendes Dateiformat für die Verbreitung von Webinhalten, auch »Syndication« oder auf Neudeutsch »Syndizierung« genannt. In der Regel transpor­tieren RSS-Feeds Newsticker-Daten wie Artikelüberschrift, Anreißer und Link zum gesamten Artikel. Feeds werden meistens von News-Aggregatoren ausgelesen und für den Leser visuell aufbereitet. RSS-Feeds lassen sich aber auch als Newsticker in die eigene Website einbauen. Zahlreiche Online-Services nut­zen diese Möglichkeiten und bieten ihren Benutzern einen Service an, der RSS-Feeds in Form von Webseiten im Browser anzeigt.

## Podcast-Beispiele

* [Schriftsonar – Der Science Fiction Podcast](http://www.schriftsonar.de/)
* [Viertausendhertz - Podcast Label](https://viertausendhertz.de/)
* [Insert Moin, der tägliche Spielepodcast](https://insertmoin.de/)

## Die Aufnahme – Illustration

Optimaler Ablauf einer Audioaufnahme

{{< amp/fig src="/images/webdesign/podcast-elemente-einer-aufnahme.png" figcaption="Optimaler Ablauf einer Audioaufnahme" width="2329" height="3262" >}}

## Das `<enclosure>`-Tag

Damit ein Podcast funktioniert, macht man sich das `<enclosure>`-Tag zunutze, das Dave Winer in seiner RSS 2.0-Spezifikation integriert hat. Mit Hilfe des `<enclosure>`-Tags können RSS-Feeds zusätzliche Links zu Medientypen wie Audiodaten, Video­daten oder Ähnlichem mitliefern. Auch wenn Podcasts in der Regel Links zu Audio­daten liefern, könnte ein Podcast z.B. auch als Abonnement für Videoclips dienen. In einem solchen Fall bezeichnet man dann den ursprünglichen Podcast als »Video­cast«.

Der Begriff »Abonnement« im Zusammenhang mit Podcasts ist zuweilen etwas missverständlich. Natürlich handelt es sich hier nicht um ein Dauerschuldverhältnis wie etwa bei einem Zeitschriftenabon­nement, das zu immer wiederkehrenden Zahlungen verpflichtet und mit einer bestimmten Frist gekündigt werden muss. Wer einen Pod­cast abonniert, erhält damit automatisch neue Episoden, schließt aber keinen Vertrag.

Um einen Podcast zu empfangen, benötigt der Benutzer eine Podcatcher-Software, zum Beispiel eines der folgenden Programme bzw. Apps:

* [iTunes](https://www.apple.com/de/itunes/)
* [Google Podcasts](https://play.google.com/store/apps/details?id=com.google.android.apps.podcasts)
* iPhone Podcast App (vorinstalliert)
* [Android-App: Podcast & Radio Addict](https://play.google.com/store/apps/details?id=com.bambuna.podcastaddict)

Die Podcatcher-Software wertet den abonnierten RSS-Feed aus und lädt auf Wunsch automatisch die darin verlinkte Mediendatei aus dem Internet herunter. Die meisten Podcatcher greifen Besitzern von iPods unter die Arme und importieren die Audiodateien gleich nach iTunes, von wo aus sie auf den iPod kopiert werden können.

Wie die meisten Weblog-Systeme generiert auch [WordPress]({{< ref "wordpress.md" >}}) automa­tisch RSS-Feeds. WordPress eignet sich darum hervorragend dazu, eigene Podcasts zu veröffentlichen, da das Redaktionssystem den Benutzer unterstützt.

## Musik für Deinen Podcast

{{< amp/img src="/images/webdesign/podcast-hoeren.jpg" alt="Musik für Deinen Podcast" width="2000" height="944" >}}

Wenn Du Musik für Deinen Podcast verwendest, musst Du immer darauf achten, dass Du die Rechte besitzt, die Musik zu nutzen. In der Regel gilt: Musik, die Du nicht selbst produziert hast, darfst Du nicht nutzen. Die Musik der beiden folgenden Compilations darfst Du für private Podcasts ohne Werbung und kommerzielle Hintergedanken nutzen.

<a class="button success radius" href="http://www.archive.org/download/nivel_del_mar_vol1/nivel_del_mar_vol1_vbr_mp3.zip">Nivel Del Mar - “Sounds for Soulsurfers ▼</a>

<a class="button success radius" href="http://www.archive.org/download/music_from_all_around_the_world/music_from_all_around_the_world_vbr_mp3.zip">Music From All Around The World (ZIP) ▼</a>

## Podcasting Software

### Software für die Podcast-Produktion

[Audacity](http://www.audacityteam.org/)
:   kostenloser, betriebssystemunabhängige Audioeditor für Windows, Mac, Linux
MP3-Codec für Audacity
: lame_enc ([Download bei Chip.de](http://www.chip.de/downloads/LAME_13003295.html) oder [Google-Suche nach lame_enc](http://www.google.de/search?q=lame_enc)

###  Podcast-Software für den Empfang

* [iTunes](https://www.apple.com/de/itunes/)
* [Google Podcasts](https://play.google.com/store/apps/details?id=com.google.android.apps.podcasts)
* iPhone Podcast App (vorinstalliert)
* [Android-App: Podcast & Radio Addict](https://play.google.com/store/apps/details?id=com.bambuna.podcastaddict)

### RSS-Podcast Generatoren

- [Podcast Generator](http://www.podcastgenerator.net/)
- [RSS-Validator](http://feedvalidator.org/)
- [Jekyll Powered Podcast XML Generator](https://github.com/DevTips/Jekyll-Powered-Podcast-XML-Generator)

## Podcasting Links

- [www.podcast.de](http://www.podcast.de/)



</div><!-- /.medium-7.columns -->
</div><!-- /.row -->
