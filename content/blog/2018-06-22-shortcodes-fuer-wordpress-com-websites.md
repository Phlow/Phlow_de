---
title: Shortcodes für WordPress.com Websites
date: 2018-06-22T12:33:58+00:00
author: Moritz »mo.« Sauer
categories:
  - Webdesign
tags:
    - wordpress
    - shortcodes
---
Mit Hilfe von Shortcodes lassen sich auch in Beiträgen dynamische Inhalte erstellen. Oder man nutzt eine der zahlreichen WordPress-Funktionen wie <code class="highlighter-rouge">[</code><code class="highlighter-rouge">audio</code><code class="highlighter-rouge">]</code>, um ein MP3 in den Beitrag einzubauen.<!-- readmore -->
<h2 id="was-ist-ein-shortcode">Was ist ein Shortcode?</h2>
Ein Shortcode ist ein WordPress-spezifischer Code/Befehl den man in einen Artikel eingibt. Mit Shortcodes fügt man größere Schnipsel ein oder lässt über Shortcodes kleinere schnuckelige Funktionen ausführen – je nach Programmierung. So kann man z.B. mit Shortcodes Dateien einbauen oder Objekte kreieren, die man sonst im Theme realisieren müsste. Shortcodes könnte man auch als <em>Shortcuts</em> betiteln.
<h2 id="shortcodes-in-der-theme-entwicklung-nutzen">Shortcodes in der Theme-Entwicklung nutzen</h2>
Wurden Shortcodes in der <code class="highlighter-rouge">functions.php</code> definiert, kann man sie nicht nur in Beiträgen, sondern auch im Theme selbst aufrufen. Dafür stellen die WordPress-Entwickler den folgenden Befehl zur Verfügung:

{{< highlight php >}}
<?php echo do_shortcode(“[shortcode]”); ?>
{{< /highlight >}}

<h2 id="wordpresscom-bietet-zahlreiche-shortcodes">WordPress.com bietet zahlreiche Shortcodes…</h2>
… z.B: für für Online-Services wie Soundcloud oder auch kleine Schleifen. Super sind z.B. die folgenden beiden Shortcodes:
<ul>
 	<li><a href="http://en.support.wordpress.com/code/posting-source-code/">Posting Source Code</a></li>
 	<li><a href="http://en.support.wordpress.com/display-posts-shortcode/">Display Posts Shortcode</a></li>
 	<li><a href="http://en.support.wordpress.com/shortcodes/">Alle Shortcodes für WordPress.com</a></li>
</ul>