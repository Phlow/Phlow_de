---
subtitle        : Webdesign
title           : 'Perfekte 404-Fehlerseiten erstellen'
meta_description: "Mit Placekitten.com bietet Mark James einen kostenlosen Service, um schnell Katzenbilder als Platzhalterbilder in eigene Webdesigns einzubauen."
image:
  header        : /images/webdesign/header-icon-fonts.png
  caption       : Entypo Icon-Font von Daniel Bruce
  url           : http://www.entypo.com
categories      : special
slug            : 404-fehlerseite
tags:
  - building tool
  - grunt
  - gulp
  - task runner
image:
  header            : images/webdesign/404-fehlerseite-970x226.png
  header_width      : 970
  header_height     : 226
  background-color  : "#ffffff"
  caption           : Gulp Beispiel Prozess
  thumb             : images/webdesign/404-fehlerseite-thumb.png
tags:
    - 404
    - fehlerseite
    - fehlermeldung
    - fehlerseite erstellen
    - error
---
Findet der Server eine Webseite nicht, entsteht eine Fehlermeldung. Mit dieser Anleitung erstellen Sie 404-Fehlerseiten, um Besucher nicht zu verlieren.
<!-- readmore -->

Die bekannteste Fehlermeldung im Internet ist der 404-Fehler. Denn ein 404 Fehler tritt irgendwann immer einmal auf. Selbst wenn alle Dokumente innerhalb einer Website korrekt verlinkt sind, provoziert nur ein Tippfehler oder ein falsch gesetzter externer Link eine 404-Fehlerseite. Zum Glück lässt sich die Fehlerseite gestalten, um den Besucher auf den richtigen Pfad zu locken. Diese Anleitung zeigt wie.

{{< amp/img src="/images/webdesign/404-fehlerseite-github-1011x679.png" alt="404 Fehlerseite" width="1011" height="679" >}}

## Machen Sie Besucher auf den 404-Fehler aufmerksam

404-Fehler treten auf, wenn...

* ...der Besucher einen fehlerhaften Link eintippt,
* ...die Suchmaschine auf eine veraltete Webseite verlinkt,
* ...die Webseite verzogen oder gelösch wurde.
{: .no-bullet }

Menschlich wie Besucher nun einmal sind, gehen Sie zuerst von der Annahme aus, nichts falsch gemacht zu haben, wenn Sie auf einer **Nicht-Gefunden-Webseite** landen. Ein kleiner vorsichtiger Hinweis, lässt sie da schon aufhorchen. Würzt man die 404-Fehlerseite sogar noch mit einer kleinen Prise Humor – z.B. mit einem witzigen Bild wie das Kochatelier Berlin – verpufft der erste Ärger oder die Enttäuschung schnell.

{{< amp/img src="/images/webdesign/404-fehlerseite-kochatelier-berlin.jpg" alt="404 Fehlerseite von Kochatelier Berlin" width="615" height="425" >}}

**Gut aufgemachte 404-Fehlerseiten motivieren Besucher, das Gesuchte erneut zu finden.** Außerdem verleiht eine amüsante 404-Fehlermeldung ihrer Webpräsenz ein wenig Charme und Profil. Nüchterne Fehlermeldungen ohne Hilfestellung begegnen einem schließlich allzu oft.

Darum ist Hilfe angesagt. Leider stolpern Surfer oftmals über Suchmaschinen in eine Fehlermeldung und ahnen nicht wohin sie katapultiert wurden. Deshalb hilft eine gute 404-Seite bei der Orientierung und macht deutlich, wo und auf welcher Art von Website der Besucher gestrandet ist. Und noch wichtiger: Eine gute 404-Fehlerseite hilft dem Besucher das Gesuchte vielleicht doch noch zu finden.

## Die 404-Fehlerseite erstellen

Die meisten Server im Netz sind Apache-Server. Ob auch Ihre Website auf einem Apache-Server liegt, erfahren Sie von Ihrem Webhoster und dessen Support. Damit ein Apache-Server bei einem 404-Fehler, eine 404-Webseite, z.B. eine Datei namens *404.php* ausgibt, müssen sie zuvor in der *.htaccess*-Datei einen Eintrag vornehmen. Die *.htaccess*-Datei speichern Sie im [Root-Verzeichnis][10] (auch Stammverzeichnis gennannt) ihres Servers ab.

`ErrorDocument 404 /404.php`

Wenn Sie [WordPress][2] nutzen, brauchen Sie die *.htaccess*-Datei nicht zu modifizieren. Mehr dazu weiter unten unter [»404-Fehlerseite für WordPress erstellen«][3].

Findet der Server eine gesuchte Webseite nicht, schaut er in der *.htaccess*-Datei nach. Denn die *.htaccess*-Datei steuert das Verhalten des Servers. In unserem Falle bedeutet das, dass bei einem 404-Fehler die Fehlerseite ausgegeben wird. Im nächsten Schritt erstellen Sie die 404-Fehlerseite *404.php*, speichern diese ebenfalls im Root-Verzeichnis ab und starten die Gestaltung.

{{< amp/img src="/images/webdesign/404-fehlerseite-ninja.jpg" alt="404 Fehlerseite – Gestohlen von einem Ninja?" width="700" height="449" >}}

## Aufbau und Elemente einer 404-Fehlerseite

Die folgende **Checkliste für eine 404-Fehlerseiten** hilft ihnen Schritt-für-Schritt, eine hilfreiche 404-Fehlerseite aufzubauen. Generell sollte eine 404-Fehlerseite schlicht und hilfreich gestaltet sein. Besucher – vor allem fremde Besucher – sind flüchtige Geschöpfe und klicken lieber auf *Zurück* anstelle sich mit einer komplexen Fehlerseite auseinanderzusetzen. Trotzdem benötigt jede 404-Fehlerseite ein paar grundlegende Elemente.

Hinweis auf einen 404-Fehler
:    Machen Sie deutlich, dass es sich um eine Fehlerseite handelt. Dieser Hinweis hilft bei der ersten Orientierung und Analyse »Wo bin ich denn jetzt gelandet?«.

Verlinktes Logo zur Startseite
:    Das Logo zeigt, wo man ist und sollte mit der Startseite verlinkt sein. Es dient als »Reset-Knopf«, um von vorne mit der Suche zu beginnen.

Slogan für die Orientierung
:    Ein Logo samt intelligentem Slogan hilft bei der schnellen Orientierung, wie z.B. »Phlow – Magazin für Magazin für Webdesign, Journalismus &amp; Social Media« oder »Jeannette Corneille – Illstrationen, Grafik und Design«. Schließlich stolpern viele Besucher über eine Suchmaschine das erste Mal in ihre Website.

Suchfunktion
:    Die wichtigste Funktion einer 404-Fehlerseite ist der **direkte Zugriff auf die Suchfunktion**. Darum baut man das Suchfeld zentral auf der 404-Fehlerseite ein.

Link zur Sitemap
:    Menschen, die sich gerne einen Überblick verschaffen, bietet man am Besten einen Link zum Inhaltsverzeichnis bzw. zur Sitemap der Website an.

Hinweise auf Tippfehler
:    Weisen Sie Besucher freundlich auf Tippfehler hin und stellen Sie Fragen wie »Haben Sie sich vielleicht vertippt?«. Machen Sie Besucher auch darauf aufmerksam, das die Webseite evtl. verschoben wurde und die Suche vielleicht Abhilfe schafft. Geben Sie ihrem Besucher nie das Gefühl, es läge an ihm. Service ist alles.

Auflistung von Kategorienseiten
:    Gut strukturierte Websites kategorisieren ihre Inhalte. Wenn Sie nicht zu viele Kategorien benutzen, helfen Links auf diese Übersichtsseiten, passende Artikel zu finden. Obendrein repräsentieren gut gewählte Kategoriennamen die Themen ihres Auftritts.

Kontaktformular einbauen, damit Benachrichtigungen entgegengenommen werden können
:    Nicht jeder Besucher hat Zeit zu helfen. Trotzdem gibt es Besucher, die einem gerne über ein Kontaktformular über fehlende oder falsch verlinkte Webseiten informieren. Verlinken Sie ihr Kontaktformular, um diese Rückmeldungen entgegenzunehmen.

{{< amp/img src="/images/webdesign/404-fehlerseite-a_list_apart.png" alt="404 Fehlerseite des englischsprachigen Webdesign Magazins A List Apart" width="963" height="583" >}}

## Eine 404-Fehlerseite für WordPress erstellen

Eine 404-Fehlerseite erstellt man in WordPress ganz einfach: Dazu legt man im aktuell genutzten WordPress-Theme die Datei <code>404.php</code> und speichert diese im Ordner des Themes ab. Mehr über WordPress-404-Fehlerseiten liest man im englischsprachigen Artikel [»Creating an Error 404 Page«][5].

## Inspiration für eigene 404-Fehlerseiten

Die folgenden Folien stellen ihnen verschiedene Ansätze Fehlermeldungen kreativ und hilfreich zu gestalten. Sie dienen der Inspiration.

<div class="flex-video"><iframe src="http://www.slideshare.net/slideshow/embed_code/11572894" width="595" height="497" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe></div>

- [49 Nice And Creative Error 404 Pages](http://www.hongkiat.com/blog/49-nice-and-creative-error-404-pages/)

## Linktipps rund um 404-Fehlerseiten

Weitere hilfreiche Artikel zum Thema, findet man unter den folgenden Links:

* Deutsch: [»Anleitung: Eigene Fehlerseiten gestalten«][7] 
* Deutsch: [»404 Seiten und Errorpages – Tipps, Do’s & Don’ts«][11]
* Deutsch: [»Dr. Web Anleitung«][8]
* Englisch: [Jakob Nielsen's 404-Fehlerseiten-Tipps][6]
* Englisch: [A List Apart: The Perfect 404][9]
* Englisch: [404 Error Pages: Reloaded][12]
* Englisch: [404 Error Pages, One More Time][13]

 [1]: http://www.kochatelier-berlin.de/404-fehler/
 [2]: {{ site.url }}/wordpress/
 [3]: #eine-404-fehlerseite-fr-wordpress-erstellen
 [5]: http://codex.wordpress.org/Creating_an_Error_404_Page
 [6]: http://www.useit.com/alertbox/404_improvement.html 
 [7]: http://jendryschik.de/weblog/2005/03/14/eigene-fehlerseiten-gestalten/
 [8]: http://www.drweb.de/magazin/die-404-error-page-einrichten/
 [9]: http://www.alistapart.com/articles/perfect404/
 [10]: http://de.wikipedia.org/wiki/Stammverzeichnis
 [11]: http://www.seo-news.de/404-seiten-errorpages-tipps/3669/
 [12]: http://www.smashingmagazine.com/2007/08/17/404-error-pages-reloaded/
 [13]: http://www.smashingmagazine.com/2009/01/29/404-error-pages-one-more-time/
 [16]: http://www.smashingmagazine.com/2009/01/29/404-error-pages-one-more-time/
 [17]: http://www.smashingmagazine.com/2007/08/17/404-error-pages-reloaded/
 [19]: http://www.seo-news.de/404-seiten-errorpages-tipps/3669/
 [20]: http://de.wikipedia.org/wiki/Stammverzeichnis