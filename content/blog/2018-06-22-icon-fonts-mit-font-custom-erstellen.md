---
title: Icon Fonts mit Font Custom erstellen
date: 2018-06-22T12:28:57+00:00
author: Moritz »mo.« Sauer
categories:
  - Webdesign
---
Mit der Open Source-Software Font Custom erstellt man sich maßgeschneiderte Icon Fonts, die man für eigene Webdesign-Projekte nutzen kann.<!--more-->

Icon Fonts bieten eine großartige Möglichkeit Websites mit vektorbasierten Icons zu verschönern. Da es sich um einen Schriftdatei handelt, kann diese auch mit den üblichen CSS-Eigenschaften wie z.B. _hover_, _text-shadow_, _color_ und ähnlichem gestaltet werden.

Zahlreiche Icon Fonts wie z.B. Font Awesome oder der von mir geschätzte Entypo-Icon-Satz bieten oft viel zu viele individuelle Icons. Oft reichen ein paar wenige. Manchmal möchte man aus verschiedenen SVG-Icons auch einen individuellen Icon Font für eigene Projekte erstellen.

Natürlich bietet das Web zahlreiche Online-Services wie z.B. <a href="https://icomoon.io/app/">icomoon.io</a>, <a href="http://fontastic.me/">fontastic.me</a>oder <a href="http://fontello.com/">fontello.com</a> über welche man sich seine eigenen Icon Fonts im Browser zusammenklicken kann. Persönlich mag ich aber den direkten Zugriff auf die Dateien und genau das bietet <a href="https://github.com/FontCustom/fontcustom">Font Custom</a>.

{{< amp/img src="/images/blog//font-custom-preview.png" width="890" height="612" alt="Preview des Icon Fonts" >}}

<h2 id="font-custom-installieren">Font Custom installieren</h2>

Font Custom installiert man mit <a href="http://brew.sh/">Brew</a> in drei Schritten.

{{< highlight terminal >}}
brew install fontforge –with-python
brew install eot-utils
gem install fontcustom
{{< /highlight >}}

<h2 id="font-custom-nutzen">Font Custom nutzen</h2>
Zu anfangs irritierte mich die Anleitung auf der Website von Font Custom ein wenig. Darum hier die eigentlich einfachen Schritte, um sich den eigenen Icon Font zusammenstricken zu lassen.
<ol>
 	<li>Terminal öffnen.</li>
 	<li>Verzeichnis mit <code class="highlighter-rouge">mkdir custom-font</code> erstellen</li>
 	<li>In das Verzeichnis mit <code class="highlighter-rouge">cd custom-font</code> wechseln.</li>
 	<li>Mit <code class="highlighter-rouge">fontcustom config</code> die Standard YAML-Konfigurationsdatei erstellen.</li>
 	<li>Konfigurationsdatei <code class="highlighter-rouge">fontcustom.yml</code> öffnen, konfigurieren, speichern.</li>
 	<li>SVG-Dateien in das Verzeichnis _custom-font_ kopieren.</li>
 	<li>Font Custom im Terminal mit <code class="highlighter-rouge">fontcustom watch</code> starten.</li>
</ol>
Dank des Watch-Vorgangs läuft jetzt Font Custom im Hintergrund und erzeugt eine neue Version des Fonts sobald man eine neue SVG-Vektor-Datei in das in <code class="highlighter-rouge">fontcustom.yml</code> definierte Verzeichnis wirft.

Sehr gut an Font Custom finde ich die zusätzlich erzeugte HTML und CSS-Datei, die den Font im Einsatz zeigt.