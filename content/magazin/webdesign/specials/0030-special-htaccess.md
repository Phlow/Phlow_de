---
subtitle        : Serversteuerung
title           : Die Magie der .htaccess-Datei
categories      : special
image:
  header        : /images/webdesign/htaccess-redirect-umleitungen.jpg
  caption       : Foto von Denys Nevozhai
  url           : https://unsplash.com/@dnevozhai
slug            : htaccess
---
Hypertext Access, häufig abgekürzt als *.htaccess*, ist eine Konfigurationsdatei mit mächtigen Funktionen. Über eine *.htaccess* steuerst Du das Verhalten eines Servers – z.B. was passieren soll, wenn der Server eine aufgerufene Internetseite nicht findet oder Du kannst eine Website mit einer Passwortabfrage schützen.
<!-- readmore -->

{{< toc >}}

## Was ist eine *.htaccess*-Datei?

Die *.htaccess* liegt als Konfigurationsdatei in einem Verzeichnis und wirkt sich auf dieses und alle dazugehörigen Unterverzeichnisse aus. Die *.htaccess* bietet also nützliche Funktionn, die es Webmastern ermöglicht den Server zu kontrollieren.

Die *.htaccess*-Datei selbst ist eine einfache Textdatei, in welche Du spezifische Befehle tippst. Am Besten erstellst und bearbeitest Du sie mit einem Texteditor wie z.B. [Atom]({{< ref "01-software-03-atom-texteditor.md" >}}).

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

So leiten Sie Ihren 404-Fehler auf eine benutzerdefinierte Seite um

http://www.htaccessbasics.com/404-custom-error-page/

## Redirect-Umleitungen legen für Suchmaschinen und Besucher

## Passwort-geschützte Bereiche per .htaccess-Datei

{{< amp/img src="/images/webdesign/htaccess-passwortschutz.jpg" alt="Foto von Jon Moore https://unsplash.com/@thejmoore" width="1920" height="823" >}}

## Website Optimierung & Schnellere Websites: GZIP Kompression aktivieren per .htaccess

Mit dem folgenden Code-Schnipsel stellt man die GZIP-Kompression an.

<pre>&lt;ifModule mod_gzip.c&gt;
mod_gzip_on Yes
mod_gzip_dechunk Yes
mod_gzip_item_include file .(html?|txt|css|js|php|pl)$
mod_gzip_item_include handler ^cgi-script$
mod_gzip_item_include mime ^text/.*
mod_gzip_item_include mime ^application/x-javascript.*
mod_gzip_item_exclude mime ^image/.*
mod_gzip_item_exclude rspheader ^Content-Encoding:.*gzip.*
&lt;/ifModule&gt;

&lt;IfModule mod_deflate.c&gt;
AddOutputFilterByType DEFLATE text/plain
AddOutputFilterByType DEFLATE text/html
AddOutputFilterByType DEFLATE text/xml
AddOutputFilterByType DEFLATE text/css
AddOutputFilterByType DEFLATE application/xml
AddOutputFilterByType DEFLATE application/xhtml+xml
AddOutputFilterByType DEFLATE application/rss+xml
AddOutputFilterByType DEFLATE application/javascript
AddOutputFilterByType DEFLATE application/x-javascript
&lt;/IfModule&gt;
</pre>

Ob Deine Website mit _gzip_ komprimiert ausgeliefert wird, checkst Du einfach mit einem Online-Werkzeug wie z.B. [checkgzipcompression.com](https://checkgzipcompression.com/).

## .htaccess – Weiterführende Literatur und Websites

* <http://www.htaccessbasics.com/>
* <http://www.htaccess-guide.com/>
* <https://code.tutsplus.com/tutorials/the-ultimate-guide-to-htaccess-files--net-4757>
