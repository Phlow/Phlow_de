---
weight            : 007
subtitle          : HTML Grundlagen
title             : '&lt;ul&gt; und &lt;ol&gt;: Inhalte sortieren mit Listen'
categories        : html-grundlagen
youtube           : v_Iv2quDSn0
image:
    title         : /images/webdesign/005-html-listen-1280x720.jpg
slug              : listen
---
Es gibt drei Arten Inhalte in Form von Listen in HTML darzustellen: ungeordnete Listen mit `ul`, geordnete Listen mit `ol` und Definitionslisten mit `dl`.
<!--more-->

Persönlich finde ich den Titel ungeordnete Liste etwas irreführend, denn auch wenn es sich um eine Liste mit Punkten handelt anstelle von Zahlen, sortiert man in der Regel vorher die jeweiligen Punkte.

Listen in HTML öffnest Du immer mit einem Anfangs- und einem End-Tag. Zwischen diese beiden Tags kommen dann die Unterpunkte, die jeweils in eigene Tags geklammert werden. Bei geordneten und ungeordneten Listen erstellst Du einen Unterpunkt mit `<li>`. Bei Definitionslisten stehen Dir zwei weitere Tags für den Begriff (term) mit `<dt>` und `<dd>` für die Beschreibung (description).

## Bullet Point-Listen aka ungeordnete Listen

Eine einfache ungeordnete Liste mit drei Unterpunkten sieht so aus:

{{< highlight html >}}
<ul>
  <li>Facebook</li>
  <li>Snapchat</li>
  <li>Twitter</li>
</ul>
{{< /highlight >}}

Du kannst auch Listen verschachteln. Also, wenn eine Liste eine Unterliste erhält. Dazu legst Du zwischen einem `<li>` und `</li>` einfache eine neue Liste an.

{{< highlight html >}}
<ul>
  <li>Soziale Netwerke
    <ul>
      <li>Facebook</li>
      <li>Snapchat</li>
      <li>Twitter</li>
    </ul>
  </li>
  <li>Soziale Apps
    <ul>
      <li>Facebook</li>
      <li>Snapchat</li>
      <li>Twitter</li>
    </ul>
  </li>
</ul>
{{< /highlight >}}

Ungeordnete Listen werden unter anderem oft für die Navigation genutzt, da man sie gemeinsam mit links sehr gut gestalten kann.

## Geordnete Listen

{{< highlight html >}}
<ol>
    <li>Listenelement 1</li>
    <li>Listenelement 2</li>
    <li>Listenelement 3</li>
</ol>
{{< /highlight >}}


## Definitionslisten

{{< highlight html >}}
<dl>
    <dt>Definition</dt>
    <dd>Beschreibung</dd>

    <dt>Definition</dt>
    <dd>Beschreibung</dd>

    <dt>Definition</dt>
    <dd>Beschreibung</dd>
</dl>
{{< /highlight >}}


{{< success >}}
**Übung:** Erstelle eine Navigation und nutze dazu eine ungeordnete Liste. Öffne anschließen die *info.html*-Datei und erstelle mit einer Definitionsliste mindestens fünf Lieblingslinks von Dir samt Beschreibung.
{{< /success >}}
