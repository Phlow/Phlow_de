---
subtitle            : Webdesign
title               : Shortcodes für WordPress.com Websites
tags:
    - wordpress
    - shortcodes
slug                : /shortcodes/
categories          : wordpress
---
Mit Hilfe von Shortcodes lassen sich auch in Beiträgen dynamische Inhalte erstellen. Oder man nutzt eine der zahlreichen WordPress-Funktionen wie `[audio], um ein MP3 in den Beitrag einzubauen.<!--more-->

## Was ist ein Shortcode?

Ein Shortcode ist ein WordPress-spezifischer Code/Befehl den man in einen Artikel eingibt. Mit Shortcodes fügt man größere Schnipsel ein oder lässt über Shortcodes kleinere schnuckelige Funktionen ausführen – je nach Programmierung. So kann man z.B. mit Shortcodes Dateien einbauen oder Objekte kreieren, die man sonst im Theme realisieren müsste. Shortcodes könnte man auch als <em>Shortcuts</em> betiteln.

## Shortcodes in der Theme-Entwicklung nutzen

Wurden Shortcodes in der `functions.php` definiert, kann man sie nicht nur in Beiträgen, sondern auch im Theme selbst aufrufen. Dafür stellen die WordPress-Entwickler den folgenden Befehl zur Verfügung:

~~~
<?php echo do_shortcode(“[shortcode]”); ?>
~~~

## WordPress.com bietet zahlreiche Shortcodes…

… z.B: für für Online-Services wie Soundcloud oder auch kleine Schleifen. Super sind z.B. die folgenden beiden Shortcodes:

 - [Posting Source Code](http://en.support.wordpress.com/code/posting-source-code/)
  - [Display Posts Shortcode](http://en.support.wordpress.com/display-posts-shortcode/)
  - [Alle Shortcodes für WordPress.com](http://en.support.wordpress.com/shortcodes/)