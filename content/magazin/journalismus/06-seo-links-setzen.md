---
subtitle          : Suchmaschinenoptimierung
title             : 'Links richtig setzen'
categories        : seo-anleitung
slug              : seo-links
---
Findet der Webcrawler einen Link auf einer Webseite, ist der Suchmaschine in der Regel erst einmal nicht klar, worum es sich bei der verlinkten Webseite handelt. Außerdem weiß die Suchmaschine nicht, ob es sich um eine Linkempfehlung handelt. Darum analysiert die Suchmaschine den Text des Links und die Linkattribute. Anschließend vergleicht die Maschine die verlinkte Webseite mit dem Linktext.
<!-- readmore -->

{{< toc >}}

Findet der Webcrawler einen Link auf einer Webseite, ist der Suchmaschine in der Regel erst einmal nicht klar, worum es sich bei der verlinkten Webseite handelt. Außerdem weiß die Suchmaschine nicht, ob es sich um eine Linkempfehlung handelt. Darum analysiert die Suchmaschine den Text des Links und die Linkattribute. Anschließend vergleicht die Maschine die verlinkte Webseite mit dem Linktext.

Ein Beispiel: Wenn man eine externe oder interne Webseite verlinkt, vermeidet man am besten aussagelose Begriffe wie »hier«, »weiterlesen« oder »mehr«. Verlinkt man zum Beispiel einen Interview-Podcast, sollte mindestens einer der beiden Begriffe *Interview* oder *Podcast* im Linktext auftauchen. Findet die Suchmaschine im nächsten Schritt auch noch die gleichen Wörter auf der verlinkten Webseite, wird diese mit hoher Wahrscheinlichkeit zu einem oder beiden Keywords indexiert.

Das bedeutet, dass es wichtiger für Ihre Webseite ist, wenn sie jemand mit guten Keywords im Linktext verlinkt als z.B. mit unbedeutenden Wörtern oder Eigennamen.

## Perfekte Text-Links

Ein Beispiel: Jeannette Corneille arbeitet als Grafik-Designerin und eine Kollegin verlinkt Sie in einem Artikel. Auch wenn die folgende Verlinkung offensichtlich ist, handelt es sich bei der zweiten Variante um eine bessere Verlinkung, da zwei Schlüsselbegriffe mit der verlinkten Website assoziiert werden:

Gut:

    <a href="http://jcorneille.de">Jeannette Corneille</a> bietet Grafik-Design in Köln an.

Besser:

    Auf Ihrer Website zeigt Jeannette Corneille <a href="http://jcorneille.de">ihre Grafik-Design-Arbeiten</a> und...

Perfekt:

    Auf Ihrer Website zeigt Jeannette Corneille <a href="http://jcorneille.de" title="Grafik Design in Köln von Jeannette Corneille">ihre Grafik-Design-Arbeiten</a> und...

## Optimierte Bilder-Links

Nutzen Sie Bilder als Links – z.B. verlinkte Bilder in einem Beitrag –, hilft  das Universalattribut `title="Keywords"` bei der Suchmaschinenoptimierung. Dieses können Sie sowohl im `<a>`-Tag als auch im `<img>`-Tag verwenden. Das sieht dann so aus:

    <a title="Kunden und Netzwerk" href="http://link.de/kunden.html">
    <img src="navigation_kunden_netzwerk.gif" alt="Kunden und Netzwerk" title="Kunden und Netzwerk"></a>

Aber auch auf Ihrer eigenen Website hilft eine gute interne Verlinkung den Suchmaschinen und erleichtert diesen, Ihre Webseite thematisch einzuordnen. Wächst der Umfang Ihrer Website, unterstützt die intelligente Strukturierung der Inhalte durch eine durchdachte interne Verlinkung das Ranking in den Suchmaschinen. Bauen Sie Link-Strukturen mit Hilfe von Textlinks auf, in welchen Sie die Schlagwörter unterbringen.

Ein weiterer wichtiger Faktor für die Anerkennung einer Website sind korrekte Links. Prüfen Sie Ihre Seite darum regelmäßig auf defekte Links. Sowohl Besucher als auch Suchmaschinen-Crawler werden Ihrer Seite schnell den Rücken kehren, wenn die Anzahl defekter Links überhand nimmt.

Vermeiden Sie auch, Links mithilfe von JavaScript zu setzen. Diese Links entdecken Suchmaschinen womöglich nicht oder bewerten sie geringer. Links in Flash kann eine Suchmaschine überhaupt nicht erkennen und weiterverfolgen. Aber die Verwendung von Flash ist dank moderner Browser-Technologie glücklicherweise eine veraltete Technik.

## Die Linkattribute `nofollow` und `follow`

Wie aber verlinke ich eine Webseite, die thematisch für meinen Beitrag wichtig ist, deren Inhalte ich aber nicht in den Suchmaschinen »promoten« möchte? Stellen Sie sich vor, Sie schreiben einen Artikel über Rechtsextremismus. In diesem Artikel möchten Sie eine Webseite von Nazis verlinken, jedoch nicht deren Sichtbarkeit in Suchmaschinen unterstützen.

Für diese Art von Links haben sich die Suchmaschinenbetreiber die beiden Linkattribute `nofollow` und `follow` ausgedacht. Während `follow` eigentlich  obsolet ist, weil man mit einem normalen Link eine Empfehlung ausspricht, so spricht man **mit `nofollow` explizit keine Empfehlung** aus.

    <a href="http://bloeder-nazi.de" rel=“nofollow“>Nazi-Seite</a>
