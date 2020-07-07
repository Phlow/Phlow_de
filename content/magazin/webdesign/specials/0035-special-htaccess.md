---
weight          : 10
subtitle        : Serversteuerung
title           : Die Magie der .htaccess-Datei
categories      : special
image:
  header        : /images/webdesign/htaccess-redirect-umleitungen.jpg
  caption       : Foto von Denys Nevozhai
  url           : https://unsplash.com/@dnevozhai
slug            : htaccess
---
Mit der _.htaccess_-Datei steuerst Du das Verhalten des Servers, der Deine Webseiten ausliefert. Dazu gehören passwortgeschützte Websites, direkte Umleitungen von URLs oder auch die Kompression der Auslieferung via _gzip_.
<!--more-->

Hypertext Access, häufig abgekürzt als *.htaccess*, ist eine Konfigurationsdatei mit mächtigen Funktionen. Über eine *.htaccess* steuerst Du das Verhalten eines Servers – z.B. was passieren soll, wenn der Server eine aufgerufene Internetseite nicht findet oder Du kannst eine Website mit einer Passwortabfrage schützen.

{{< toc >}}

## Was ist eine *.htaccess*-Datei?

Die *.htaccess* liegt als Konfigurationsdatei in einem Verzeichnis und wirkt sich auf dieses und alle dazugehörigen Unterverzeichnisse aus. Die *.htaccess* bietet also nützliche Funktionn, die es Webmastern ermöglicht den Server zu kontrollieren.

Die *.htaccess*-Datei selbst ist eine einfache Textdatei, in welche Du spezifische Befehle tippst. Am Besten erstellst und bearbeitest Du sie mit einem Texteditor wie z.B. [Atom]({{< ref "/magazin/webdesign/software/01-software-03-atom-texteditor.md" >}}).

## Wo befindet sich die .htaccess-Datei?

Das erste, was Du herauszufinden musst, ist, ob Dein Webhoster Dir tatsächlich erlaubt, *.htaccess*-Dateien zu bearbeiten. Aufgrund von Sicherheitsproblemen, die auftreten können, halten viele Webhoster ihre Kunden davon ab, die *.htaccess*-Datei zu bearbeiten. Dazu siehst Du Dir am Besten Dein Webhosting-Paket an oder fragst beim Support nach.

Einige Betriebssysteme zeigen die *.htaccess*-Datei möglicherweise nicht auf Deinem Computer an. Das ist z.B. oft bei einem Mac-Computer der Fall. Darum musst Du möglicherweise sicherstellen, dass die Einstellungen auch versteckte Dateien anzeigen. Ebenso zeigen einige FTP-Clients die *.htaccess*-Datei nicht immer direkt an, wenn Du auf Deinen Webspace zugreifst.

Nutzt Du z.B. Filezilla, musst Du den Menüpunkt *Server > Auflistung versteckter Dateien erzwingen* auswählen – siehe Abbildung.

{{< amp/fig src="/images/webdesign/htaccess-filezilla-versteckte-dateien-anzeigen.png" figcaption="Damit Filezilla versteckte Dateien anzeigt, musst Du ein Häkchen bei *Auflistung versteckter Dateien erzwingen* setzen." width="759" height="296" >}}

## Vorsicht und Nerven behalten bei der Nutzung von *.htaccess*

Die *.htaccess*-Datei gibt Dir eine Menge Kontrolle darüber, was auf Deiner Website passiert. Aber Unfälle passieren. Wenn Du z.B. vergisst Deine Weiterleitungs-URL mit einem Schrägstrich `/` zu starten, kann das Deine gesamte Website zum Absturz bringen.

Deshalb erstelle vor Veränderungen **immer erst eine Sicherungskopie**. Hilfreich ist eine alte funktionierende *.htaccess*-Dateien aufzubewahren, die Du bereits verwendet hattest. Das spart Dir Zeit, Nerven und holt Deine Website im schlimmsten Fall zurück von den Toten.

Denn *.htaccess* ist extrem empfindlich. Ein fehlendes Semikolon, ein falscher Buchstabe oder ein zusätzlicher Backslash kann das gesamte System durcheinander bringen. Darum sei bitte Vorsicht und tippe alle Befehle genau ab.

Lass' Dich davon aber nicht abschrecken. Denn mit *.htaccess* lassen sich ein paar magische Dinge anstellen. Die folgenden Anleitungen zeigen Dir, wie Du leicht passwortgeschützte Bereiche aufbaust, gelöschte Seiten umleitest oder gezielt bei fehlerhaften Webseitenaufrufen eine 404-Fehlerseite anzeigen lässt.

## Hilfreiche 404 Fehlerseiten

Eine 404-Fehlermeldung ist der Standard-HTTP-Antwortcode, der zurückgegeben wird, wenn der Besucher nicht mit dem Server kommunizieren kann. Der Besucher erhält eine standardisierte 404-Fehlerseite.

{{< amp/img src="/images/webdesign/404-fehlerseite-970x226.png" alt="" width="970" height="226" >}}

Dies ist ein sehr häufiger Fehler im Web, der auftritt, wenn Du versuchst, eine Seite zu besuchen, die entweder gelöscht oder an einen anderen Ort verschoben wurde.

Wenn Du zum Beispiel die Struktur Deiner Website änderst und ein bestimmtes Verzeichnis in einen anderen Teil der Website verschiebst, erhält jeder, der versucht, die alte Seiten-URL zu besuchen, eine 404-Fehlermeldung.

Wenn ein Besucher auf Deine Website kommt und eine Standard-404-Fehlermeldung sieht, die keine Aussage hat, dann ist es unwahrscheinlich, dass er sich die Mühe macht, irgendeinen Teil Deiner Website zu sehen. Darum ist es sehr wichtig, eine 404-Seite zu erstellen, die das abfedert.

{{< info >}}
Schau Dir unsere Beispiele für erfolgreiche [404-Fehlerseiten]({{< ref "0050-fehlerseite.md" >}}) an und lass Dich inspirieren.
{{< /info >}}

Glücklicherweise macht _.htaccess_ dies sehr einfach. Zuerst musst Du eine 404-Fehlerseite erstellen. So würden Sie z.B. eine Seite auf `https://www.deinedomain.de/404.php` erstellen.

Sobald Du Deine 404-Seite eingerichtet hast, brauchst Du nur noch Besucher mit falschen Url's auf diese Seite umzuleiten. Dazu fügst Du einfach die folgende Zeile in die _.htaccess_-Datei ein:

~~~
ErrorDocument 404 /404.php
~~~

## https forcieren

Wenn Du ein SSL-Zertifikat für Deine Website eingebaut hast und _https_ funktioniert, dann leitest Du am Besten alle _http_-Anfragen mit den folgenden Server-Befehlen in der _.htaccess_-Datei um.

Getestet für HostEurope

~~~
RewriteEngine on
RewriteCond %{HTTP_HOST} ^www\.(.*)$ [NC]
RewriteRule ^(.*)$ https://%1/$1 [R=301,L]
RewriteCond %{HTTPS} !on
RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI} [R=301,L]
~~~

## Redirect-Umleitungen legen für Suchmaschinen und Besucher

Ein 301 HTTP Response Status Code ist eine Möglichkeit, Suchmaschinen mitzuteilen, dass eine Seite, Seiten, ein Verzeichnis oder eine ganze Website dauerhaft an einen anderen Ort im Web verschoben wurde.

Der grundlegende Code für die Weiterleitung ist :

~~~
Redirect 301 /artikel.html https://phlow.de/artikel.html
~~~

Der alte Speicherort der Datei muss der absolute Pfad vom Stammverzeichnis Ihres Servers sein. Der neue Speicherort sollte http verwenden.

## gzip-Komprimierung aktivieren

> gzip ist ein freies Kompressionsprogramm, das, ebenso wie das entsprechende Dateiformat gzip, praktisch für alle Computerbetriebssysteme verfügbar ist (unter den Bedingungen der GPL auch im Quelltext).

Ob eine Website Dateien komprimiert per [gzip](https://de.wikipedia.org/wiki/Gzip) ausgibt, testest Du leicht mit Online-Werkzeug, wie diesem [gzip-Test](https://www.giftofspeed.com/gzip-test/). Wenn gzip nicht aktiviert ist, kannst Du den folgenden Code nutzen.

~~~
<IfModule mod_deflate.c>
# Komprimiere HTML, CSS, JavaScript, Text, XML und fonts
  AddOutputFilterByType DEFLATE application/javascript
  AddOutputFilterByType DEFLATE application/rss+xml
  AddOutputFilterByType DEFLATE application/vnd.ms-fontobject
  AddOutputFilterByType DEFLATE application/x-font
  AddOutputFilterByType DEFLATE application/x-font-opentype
  AddOutputFilterByType DEFLATE application/x-font-otf
  AddOutputFilterByType DEFLATE application/x-font-truetype
  AddOutputFilterByType DEFLATE application/x-font-ttf
  AddOutputFilterByType DEFLATE application/x-javascript
  AddOutputFilterByType DEFLATE application/xhtml+xml
  AddOutputFilterByType DEFLATE application/xml
  AddOutputFilterByType DEFLATE font/opentype
  AddOutputFilterByType DEFLATE font/otf
  AddOutputFilterByType DEFLATE font/ttf
  AddOutputFilterByType DEFLATE image/svg+xml
  AddOutputFilterByType DEFLATE image/x-icon
  AddOutputFilterByType DEFLATE text/css
  AddOutputFilterByType DEFLATE text/html
  AddOutputFilterByType DEFLATE text/javascript
  AddOutputFilterByType DEFLATE text/plain
  AddOutputFilterByType DEFLATE text/xml
 
  # Browser bugs entfernen (nur für wirklich alte Browser)
  BrowserMatch ^Mozilla/4 gzip-only-text/html
  BrowserMatch ^Mozilla/4\.0[678] no-gzip
  BrowserMatch \bMSIE !no-gzip !gzip-only-text/html
  Header append Vary User-Agent
</IfModule>

<IfModule mod_expires.c>
  ExpiresActive on
  ExpiresDefault "access plus 1 month"
  ExpiresByType image/gif "access plus 1 month"
  ExpiresByType image/png "access plus 1 month"
  ExpiresByType image/jpg "access plus 1 month"
  ExpiresByType image/jpeg "access plus 1 month"
  ExpiresByType text/html "access plus 3 days"
  ExpiresByType text/xml "access plus 1 seconds"
  ExpiresByType text/plain "access plus 1 seconds"
  ExpiresByType application/xml "access plus 1 seconds"
  ExpiresByType application/rss+xml "access plus 1 seconds"
  ExpiresByType application/json "access plus 1 seconds"
  ExpiresByType text/css "access plus 1 week"
  ExpiresByType text/javascript "access plus 1 week"
  ExpiresByType application/javascript "access plus 1 week"
  ExpiresByType application/x-javascript "access plus 1 week"
  ExpiresByType image/x-ico "access plus 1 year"
  ExpiresByType image/x-icon "access plus 1 year"
  ExpiresByType application/pdf "access plus 1 month"
</IfModule>
~~~

## .htaccess – Weiterführende Websites

* <http://www.htaccessbasics.com/>
* <http://www.htaccess-guide.com/>
* <https://code.tutsplus.com/tutorials/the-ultimate-guide-to-htaccess-files--net-4757>
