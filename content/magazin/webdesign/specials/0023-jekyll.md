---
weight          : 23
meta_title      : 'Eine Website mit Jekyll erstellen – MegaTutorial Leitfaden'
subtitle        : 'Static Website Generator'
title           : 'Eine Website mit Jekyll erstellen – MegaTutorial Leitfaden'
categories      : special
# image:
#   header        : /images/webdesign/
permalink       : /magazin/webdesign/jekyll
---

{{< toc >}}

## Einleitung

[Jekyll](http://jekyllrb.com/) ist ein so genannter *Static Website Generator*. Das Kommandozeilenprogramm bietet keine [WYSIWYG](http://de.wikipedia.org/wiki/WYSIWYG)-Oberfläche, sondern Sie starten Jekyll über die Kommandozeile – z.B. über das [Terminal]({{< ref "/content/magazin/terminal/_index.md" >}}) beim Mac.

Jekyll baut statische HTML-Webseiten anhand von einfachen Textdateien, die eingelesen werden. Dabei handelt es sich um Layout-Dateien und Inhaltsdateien. Jekyll generiert aufgrund der Layout-Vorlagen die statischen HTML-Webseiten. Das funktioniert sogar live während der Entwicklung, da Jekyll einen eigenen Server mitbringt, den Sie samt Jekyll starten können.

Das in Ruby geschriebene Programm eignet sich hervorragend für den Betrieb eines Blog oder für kleine Website-Projekte, wie z.B. Portfolios, Minisites oder kleine Image-Websites.

> Website generators like Jekyll work by combining template files with content and rendering them to static html pages. They provide the best balance between content creation and editing flexibility, serving an incredibly fast and reliable website.

Die Stärken liegen auf der Hand: Da Jekyll nur statische Webseiten generiert, entstehen keine Sicherheitslücken auf dem Server. Außerdem man muss kein Redaktionssystem samt Plugins pflegen, denn Jekyll baut die Website auf dem eigenen Rechner, die man  anschließend per FTP-Programm nur noch hochladen muss. So entfallen Wartungsarbeiten, wie sie z.B. beim [CMS WordPress]({{< ref "/content/magazin/wordpress/_index.md" >}}) kontinuierlich anfallen.

> I was originally going to name it Conveyor (because the project was to take one type of file and conveyor belt it through a process that turned it into another format), but I think that was already taken as a gem name. So I thought about it and decided that the most important feature was the ability to transform files of a rather bland format into files that were so much more interesting. This transformation process reminded me of the story of Dr Jekyll and Mr Hyde, and the name jekyll was available as a gem and seemed to encapsulate the ideas of transformation that I wanted. Thus: Jekyll was born!
> <cite><a href="https://talk.jekyllrb.com/t/why-is-jekyllrb-called-jekyll/267">Tom Preston-Werner</a></cite>

### Die Stärken eines Static Website Generators

Jekyll bietet als Static Website Generator zahlreiche Vorteile, die Systeme wie WordPress einfach nicht bieten können. Die wichtigsten Vorteile von Jekyll sind:

* Kaum Serverlast durch statische HTML-Seiten
* Schnelle Performance der Website für gute Suchmaschinenpositionen
* Sicherheit der Webpräsenz dank reinem HTML
* Texte schreibt man im eigenen Lieblingseditor
* Sehr flexible Gestaltung von Templates
* Einfache Entwicklung und Pflege
* Versionskontrolle durch kontinuierliche Backups
* Unkomplizierter Umzug von Websites
* Software- und Formatunabhängigkeit

### Pro und Contra Jekyll

{{< success >}}
**Vorteile von Jekyll**

* Schnelle Performance der Website
* Sicherheit der Webpräsenz da reines HTML
* Einfache Entwicklung und Pflege
* Versionskontrolle durch kontinuierliche Backups
* Unkomplizierter Umzug von Websites
* Tool- und Formatunabhängigkeit
* Sehr flexible Gestaltung von Templates
* Texte schreibt man im Lieblingseditor
{{< /success >}}

{{< warning >}}
**Nachteile von Jekyll**

* Installation von Jekyll auf dem Rechner kompliziert
* Keine grafische Benutzeroberfläche, sondern Befehlszeile
* Folgende Kenntnisse sind notwendig
    * HTML
    * CSS
    * Javascript
    * Markdown
    * YAML
    * Optional: Ruby
    * Optional: Liquid Template Language
* Jekyll baut nicht automatisch (Blog-)-Archivseiten
* keine Echtzeit-Plugins für Chat, Kalender oder Kommentare o.ä.

{{< /warning >}}

### Wie funktioniert Jekyll?

Jeykyll arbeitet als Kommandozeilenprogramm und generiert Webseiten anhand von Textdokumenten und Templates. Eine Datenbank benötigt Jekyll nicht, da beim Start von Jekyll sämtliche Projektdateien indiziert werden und die Metainformationen temporär gespeichert werden.

{{< info >}}
TIPP: **Ich möchte von WordPress zu Jekyll wechseln, was nun?**

Das beste Werkzeug um alte WordPress-Beiträge in das Jekyll-Format zu konvertieren ist [Exit WP](https://github.com/thomasf/exitwp). Die Beiträge konvertiert das Werkzeuge anhand der wordpress.xml-Datei, die man über das WordPress-Backend unter Werkzeuge exportiert.

{{< /info >}}

## Jekyll installieren

Eine Schritt für Schritt-Anleitung, um den Website Generator Jekyll auf dem eigenen Rechner zu installieren.

### Voraussetzungen für Jekyll

Um Jekyll auf einem Mac OS X-, Windows- oder Linux-Rechner zu installieren benötigt man die folgende freie Software:

* [Ruby](http://www.ruby-lang.org/en/downloads/)
* [RubyGems](http://rubygems.org/pages/download)


#### Jekyll auf Windows installieren

Der folgende Abschnitt ist eine modifizierte Übersetzung von [»Learn how to run Jekyll, the blog-aware, static site generator in Ruby on Windows.«](https://github.com/juthilo/run-jekyll-on-windows/). Die folgenden Schritte habe ich selbst nicht ausprobiert. Ich garantiere nicht dafür, dass diese Anleitung vollständig oder korrekt ist.

##### #1 Ruby auf Windows installieren

Um Ruby auf Windows-Rechnern zu nutzen, muss man es zuerst installieren. Dafür eignet sich am Besten der Ruby Installer. Die aktuelle Version des Ruby Installers findet man unter [rubyinstaller.org](http://rubyinstaller.org/downloads/).

Nach dem Download starten Sie einfach die `.exe`-Datei. Die Installation erledigt der Installer. Wichtig ist, dass man in der Checkbox »Add Ruby executables to your PATH« einen Haken setzt. Weitere Informationen findet man auf der offiziellen Ruby-Website unter [»Ruby installieren«](https://www.ruby-lang.org/de/installation/).

##### #2 Ruby DevKit installieren

Einige der so genannten *Dependencies* von Jekyll müssen nativ gebaut werden. Dazu ist das Ruby DevKit notwendig.

1. Laden Sie das Ruby DevKit-Paket unter [rubyinstaller.org](http://rubyinstaller.org/downloads/) herunter.
    * Beachten Sie, dass Sie die richtige Versionsnummer des DevKits passend zu Ihrer Rechnerarchitektur herunterladen. Schauen Sie auf ihrem Rechner nach, ob Sie ein 32 Bit- oder 64 Bit-System nutzen.
2. Bevor Sie die Installation durchführen, beenden Sie am Besten alle anderen Programme. Führen Sie die `.exe`-Datei aus und wählen Sie als Ziel etwas wie `C:\rubydevkit\`.
3. Initialisieren Sie das DevKit und verknüpfen Sie mit der Ruby-Installation über Ihr bevorzugtes Kommandozeilenwerkzeug.
    * Navigieren Sie in den Ordner, in welchen Sie das DevKit extrahiert haben – z.B. `cd C:\rubydevkit\`.
    * Geben Sie jetzt `ruby dk.rb init` ein, um automatisch Ruby-Installationen zu finden und fügen Sie diese Ihrer Konfigurationsdatei hinzu.
    * Installieren Sie das DevKit mit `ruby dk.rb install`.

##### #3 Das Jekyll-Gem installieren

Installieren Sie die aktuelle Version von Jekyll über die Kommandozeile.

~~~
$ gem install jekyll
~~~

Glückwunsch! Sie haben Ruby und Jekyll auf Ihrem Windows-System installiert.

{{< success >}}
TIPP: Weitere Informationen zum Umgang mit Jekyll auf Windows-Rechnern findet man unter [»How to Run Jekyll on Windows«](https://github.com/juthilo/run-jekyll-on-windows/).
{{< /success >}}

#### Jekyll auf Linux installieren

Da ich nicht mit Linux vertraut bin, übergehe ich an dieser Stelle die Installation von Jekyll auf Linux-Systemen und verweise auf einen Artikel von Damian Thater: [»Jekyll auf Ubuntu installieren«](http://www.damianthater.com/2013/02/09/2100-jekyll-blog-installation-ubuntu.html).


#### Jekyll auf Mac OS X installieren

##### Schritt 1: XCode installieren

Ruby ist auf Mac OS X-Rechnern bereits installiert. Um jedoch einwandfrei mit Jekyll und Ruby zu arbeiten, installiert man am Besten das von Apple zur Verfügung gestellte kostenlose [XCode](https://developer.apple.com/xcode/downloads/)-Paket mit zahlreichen Entwicklerwerkzeugen. Für Jekyll brauchen Sie das Kommandozeilenwerkzeug, das Terminal.

Xcode kann man auch über den [App Store herunterladen](https://itunes.apple.com/de/app/xcode/id497799835?mt=12).

##### Schritt 2: Ruby auf Mac OS X installieren und aktualisieren

Starten Sie jetzt das Terminal. Dieses finden Sie entweder über den Finder unter Programme oder Sie öffnen es über [Spotlight](http://support.apple.com/kb/HT2531?viewlocale=de_DE&locale=de_DE). Ich kann Ihnen nur die Tastenkombination <kbd>CMD</kbd> + <kbd>Leertaste</kbd> empfehlen. Anschließend tippen Sie sofort weiter `terminal` in die Suchmaske ein.

In der Regel reichen aber bereits die ersten drei Buchstaben. Bestätigen Sie anschließend mit der Eingabetaste die Auswahl im Ausklappmenü. Das ist auch in Zukunft der schnellste Weg Jekyll zu starten.

Um das gesamte System zu aktualisieren und es auf den aktuellen Stand zu bringen, tippen Sie als nächstes den folgenden Befehl ins Terminal.

~~~
sudo gem update --system
~~~

###### Ruby mit Homebrew (OS X) installieren

Viele Anwender verwenden unter OS X [Homebrew]({{< ref "8-terminal-erweitern-01-homebrew.md" >}}) als Paketverwaltung. Ruby wird damit folgendermaßen installiert:

~~~
brew install ruby
~~~

##### Schritt 3: Jekyll-Gem installieren

~~~
gem install jekyll
~~~

## Ein neues Jekyll-Projekt erstellen

Mit einem kurzen Befehl starten Sie ein neues Jekyll-Projekt. Nachdem Jekyll die Website angelegt hat, starten Sie den integrierten Server mit einem zweiten Befehl und schon geht's los.

### Schritt 1: Neues Jekyll-Projekt initieren

Hat man Jekyll auf seinem Computer installiert, öffnet man als nächstes das Terminal. Um ein neues Jekyll-Projekt anzulegen, genügt der folgende Befehl:

~~~
jekyll new jekyll-projekt
~~~

Anschließend wechselt man mit...

~~~
cd jekyll-projekt
~~~

...in das Projektverzeichnis.


### Schritt 2: Jekyll-Server starten

Im zweiten Schritt genügt der kurze Befehl...

~~~
jekyll serve
~~~

..., um den in Jekyll eingebauten Server zu starten. Verändert man im Jekyll-Ordner Dateien, so erkennt Jekyll dies automatisch. Entdeckt das Programm Änderungen, baut es die Webseiten neu und speichert diese im Verzeichnis `_site` ab. In Kombination mit [Livereload](http://livereload.com/) ist das eine unschlagbare Entwicklungsumgebung.

### Schritt 3: Jekyll-Website im Browser aufrufen

Über den Browser ruft man sein Jekyll-Projekt über `localhost:4000` auf.


### Jekyll stoppen mit CMD + C

Läuft Jekyll als Server oder baut Jekyll gerade eine Website mit dem Befehl...

~~~
jekyll build
~~~

..., dann lässt sich dieser Prozess mit <kbd>CMD</kbd> + <kbd>C</kbd> abbrechen.

## Erste Schritte zum eigenen Jekyll-Theme

Der einfachste Weg mit einem neuen CMS eine eigene Website zu bauen, ist die Modifizierung des bestehenden Themes. Das pure Standard-Jekyll-Theme eignet sich gut als Ausgangspunkt für die ersten Schritte.

Die Jekyll-Layout-Dateien liegen im Ordner `_layouts` und umfassen die Dateien `default.html`, `post.html` und `page.html`. Welches Layout für eine Seite genutzt wird, definiert man im so genannten Front-Matter – siehe weiter unten.

Das Front-Matter ist der Bereich zu Beginn eines Beitrages, der die Metadaten zum jeweiligen Dokument zusammenfasst. Die Blog-Beiträge findet man im Verzeichnis `_posts`.

### includes – Wiederkehrende Code-Teile auslagern

Auch Jekyll erlaubt das zerlegen eines Templates in verschiedene Bauteile. Für die Übersicht zerlegen Sie am Besten Ihr bestehendes Theme in vier Bestandteile:

1. header
2. footer
3. sidebar
4. content

Da sich *content* aus dem Inhalt der Textdateien ergibt, kümmern Sie sich  zuerst um die ersten drei Bauteile. Dazu legen Sie einen Ordner *_includes* an, in welchem Sie die folgenden drei Dateien anlegen:

1. *header.html*
2. *footer.html*
3. *sidebar.html*

Innerhalb eines Templates ruft man diese Code-Bauteile über den Befehl `{% include code-teil.html %}` auf. Zum Beispiel: `{% include footer.html %}`.

Anschließend öffnen Sie das *default.html*-Template und kopieren den oberen Teil bis `{{ content }}` in *header.html* und den abschließenden Teil nach `{{ content }}` in *footer.html*.

Um die *includes* innerhalb von *default.html* aufzurufen, genügt der Befehl `{% include header.html %}`. Die *default.html*-Datei sieht dann so aus:

~~~
{% include header.html %}
    {{ content }}
{% include footer.html %}
~~~

## Die Jekyll-Website konfigurieren

Die Jekyll-Website konfiguiert man mit Hilfe der *_config.yml*-Datei. Und diese Optionen stehen zur Verfügung.

Um dem Projekt einen eigenen Namen zu geben, ändert man `name`. Da sämtliche Textdateien durch einen Markdown-Filter fließen, was einfach wunderbar ist, sollte man `markdown: kramdown` erst einmal belassen. Wer weiss, dass er definitiv keine Code-Schnipsel auf seiner Jekyll-Site anzeigen lassen will, der stellt den Konverter *pygments* einfach aus. Das geschieht mit dem Wert `false`, als `highlight: false`.

Bei mir sieht das dann so aus:

~~~
name        : Webseiten bauen mit Jekyll
markdown    : kramdown
highlighter : true
~~~

### Voreinstellungen für Beiträge festlegen

Über `defaults` lassen sich Voreinstellungen für Beiträge festlegen, damit man diese nicht immer und immer wieder für Beiträge neu eingeben muss.

Unten legt man für den `type` *posts* fest, dass diese standardmäßig als voreingestelltes Layout `default` bekommen und alle Dokumente einbezogen werden: `path: ""`. Im [YAML front-matter][2] kann man diese Einstellung natürlich pro Dokument überschreiben.

~~~
defaults:
  -
    scope:
      path: "" # ein leerer string an dieser Stelle bezieht alle Projektateien ein
      type: "posts"
    values:
      layout              : "default"
~~~

Mehr zu den defaults findest Du unter <http://jekyllrb.com/docs/configuration/#front-matter-defaults>.

### Weitere Möglichkeiten für Konfiguration eines Jekyll-Projekte

`port: 8888`
:   Um den Server-Port vom Standardwert `4000` z.B. auf `8888` umzustellen, nutzt man in der Konfiguration `port:`.

`encoding: UTF-8`
:   Um die Kodierung für Unicode-Zeichen auf [UTF-8](http://de.wikipedia.org/wiki/Utf-8) festzulegen – besonders hilfreich bei Jekyll-Projekten auf Windows – legt man diese mit `encoding: UTF-8` fest.

## Jekyll-Themes mit Liquid entwickeln

Wer mit Jekyll ein eigenes Blog nutzt und dieses designen will, kommt um die Template-Sprache Liquid nicht herum.

Eine Zusammenfassung der Links bietet unter [liquidmarkup.org](http://liquidmarkup.org/) eine Zusammenfassung und für Designer gibt es zahlreiche [Liquid-Beispiele auf Github](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers). Wer z.B. mit einem CMS wie WordPress eigene Themes entworfen und entwickelt hat, wird sich sehr schnell dank der Beispiele zurechtfinden.

## YAML Front Matter Richtig Nutzen

Jekyll Front Matter – Eigene Inhalte mit Metainformationen versorgen, erweitern sowie eigene Variablen für Templates und Themes definieren.

Der *front matter*-Bereich[^frontmatter] ist der Bereich eines Jekyll-Dokumentes, das Informationen über das Dokument enthält, also Metainformationen. So legen Sie über *front matter* z.B. Metainformationen wie Titel und welches Layout Jekyll für das aktuelle Dokument nutzen soll fest. Das sieht dann z.B. so aus:

~~~
---
layout  : page
title   :  "YAML front-matter richtig nutzen"
---
~~~

Wenn Jekyll ein Dokument liest, und Metainformationen innerhalb eines Bereiches findet, der oben und unten mit drei Minuszeichen startet und endet, prozessiert und speichert Jekyll diese Informationen ab und nutzt die Informationen, wenn diese abgefragt werden.

Damit *front matter* richtig funktioniert, muss das Dokument direkt mit den YAML-Informationen beginnen. Außerdem müssen die Informationen in der richtigen YAML-Syntax abgespeichert werden, damit Jekyll die Informationen lesen und verarbeiten kann.

> YAML ist eine vereinfachte Auszeichnungssprache zur Datenserialisierung, angelehnt an XML und an die Datenstrukturen in den Sprachen Perl, Python und C sowie dem in RFC 2822 vorgestellten E-Mail-Format. <cite>Quelle: [Wikipedia](http://de.wikipedia.org/wiki/YAML)</cite>

Dann entfaltet sich die Magie von Jekyll und die definierten Variablen (z.B. `title`) können über Liquid-Befehle genutzt und ausgegeben werden.

### Eigene Variablen über Front Matter definieren

Neben den von Jekyll vorgegebenen Standardwerten lassen sich auch eigene *front matter*-Variablen festlegen. Das ist die besondere Stärke von Jekyll. Denn neue Variablen legen Sie einfach im Front Matter fest. Wie Sie diese benennen, bleibt Ihnen überlassen. Wieviele Sie pro Dokument und Jekyll-Projekt definieren auch. Die Variablen können Sie wann immer Sie diese brauchen, in Templates, Schleifen und IF-Abfragen abrufen, ausgeben, kombinieren und nutzen.

Über die Konfigurationsdatei *_config.yml* können Sie für eigene Variablen auch default-Werte festlegen. Die Daten strukturieren Sie mit [YAML](http://yaml.org/).

### Beispiel: YAML front-matter

~~~
---
layout           : page
title            :
teaser           :
image            :
icon             :
youtube-video-id :
embed            :
comments         : false
categories       :
date             : 2014-06-19 00:00:00
tags             :
    - schlagwort-eins
    - schlagwort-zwei
permalink        : /permalink-url/
published        : true
---
~~~

 [^frontmatter]: Die offizielle Dokumentation finden Sie unter <http://jekyllrb.com/docs/frontmatter/>.

## Jekyll aktualisieren

Erscheint eine neue Version von Jekyll, sollte man schleunigst Jekyll auf den neuesten Stand bringen. Um herauszufinden, welche Version auf dem System installiert ist, ruft man einfach Jekyll mit dem Parameter `-v` für Version auf.

~~~
jekyll -v
~~~

Aktualisiert wird Jekyll dann mit.

~~~
sudo gem update jekyll
~~~

