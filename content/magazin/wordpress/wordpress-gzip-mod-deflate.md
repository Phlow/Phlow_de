---
subtitle: Optimierung
title: "WordPress beschleunigen mit gzip und mod_deflate"
category: wordpress
tags:
  - beschleunigung
  - gzip
  - mod_deflate
  - webdesign
  - wordpress
image:
    title: /images/webdesign/komprimieren_shutterstock_72987988-800x451.jpg
    thumb: wordpress.png
    caption: "Kompression – Foto von Shutterstock"
    caption_url: http://www.shutterstock.com/pic.mhtml?id=72987988&src=id
style: "#navigation > nav > section > ul.left > li:nth-child(5) > a { background: #82cbd0; color: #fff; }"
permalink: /wordpress/beschleunigen/
---
Die beiden Module gzip (mod\_gzip) und mod\_deflate beschleunigen WordPress-Websites mittels Kompression enorm. Die Installation ist denkbar einfach.
<!-- readmore -->

## Was ist gzip?

*gzip* ist ein Kompressionsprogramm, das für alle Computerbetriebssysteme verfügbar ist. 90% der Browser unterstützen die gzip-Kompression. Dank der Kompression lassen sich HTML, Javascript, CSS-, Text-, PHP- oder Bilddateien komprimieren.

Logisch, dass dadurch die an den Empfänger gesendeten Daten weniger und die einzelnen Webseiten schneller im Browser dargestellt werden. Zwischen 40% bis 70% des Transfervolumens lässt sich dadurch einsparen. Der Empfänger freut sich dann über schnelle Websites.

> mod_gzip must be loaded last in the module list, as Apache 1.3.x processes content in module order, and compression is the final step performed before data is sent. 

## mod_deflate

*mod_deflate* arbeitet zusammen mit gzip, darf aber erst nach gzip in der .htaccess-Datei stehen.

> mod_deflate for Apache versions 2.0.44 and earlier comes with the compression ratio set for best speed, not best compression 

## Websites auf Kompression testen

{{< amp/img src="/images/webdesign/gzip_kompression-585x204.png" alt="gzip_kompression" width="585" height="204" >}}

Ist gibt einige Websites, über die man schnell testen kann, ob die eigene (oder eine andere) Website bereits gzip aktiviert hat und komprimierte Daten ausliefert.

* <http://www.feedthebot.com/tools/gzip/>
* <http://www.whatsmyip.org/http-compression-test/>

## Was muss ich tun, um mod\_gzip und mod\_deflate zu nutzen?

Bevor man *mod_gzip* und *mod_deflate* nutzen kann, muss man im ersten Schritt feststellen, ob der eigene Webhoster bzw. das Paket, welches man benutzt die beiden Module zur Verfügung stellt. In meinem Fall habe ich einfach beim Support von HostEurope nachgefragt, die Antwort lautete »Ja!« und anschließend reichte es aus, die beiden unten stehenden Code-Schnippsel in die `.htaccess`-Datei einzufügen.

## Code-Schnipsel für die .htaccess-Datei

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

## Tiefergehende Informationen zu gzip und mod_deflate

* [Enable Gzip][1]
* [Compressing Web Content with mod\_gzip and mod\_deflate][2]
* [Das gzip-Projekt][3]



 [1]: http://www.feedthebot.com/pagespeed/enable-compression.html
 [2]: http://www.linuxjournal.com/article/6802
 [3]: http://sourceforge.net/projects/mod-gzip/