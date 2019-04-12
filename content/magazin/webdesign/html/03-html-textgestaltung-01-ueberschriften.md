---
subtitle              : HTML Grundlagen
title                 : Überschriften mit <h1>, <h2>, <h3>,…
categories            : html-grundlagen
# published             : false
seo:
  title               : Suchmaschinenoptimierung mit den Überschriften h1, h2, h3,…
  description         : Mit den HTML-Überschriften &lt;h1&gt;, &lt;h2&gt;, &lt;h3&gt;,… gliederst Du Texte und optimierst Deine Beiträge gleichzeitig für Suchmaschinen. Wie erklärt Dir der Artikel.
---
Mithilfe der Überschriften-Tags gliederst Du Texte nicht nur optisch und regst die Neugierde der Besucher an, sondern Du greifst auch Deiner Website suchmaschinentechnisch unter die Arme.
<!-- readmore -->

Überschriften gliedern Texte. Ich versuche es anhand eines Buches zu erklären. Jedes Buch hat einen Titel. Das ist bei HTML die Überschrift – *headline* – erster Ordnung: `<h1>`. Wie ein Buch nur einen Titel hat, darf auch eine Webseite nur eine `<h1>`-Überschrift haben.

Wie ein Autor ein Buch meist in Kapitel unterteilt, gliederst Du Deine Texte auf einer Webseite auch mit Zwischenüberschriften. HTML folgt dabei der Logik. Nach der `<h1>`-Überschrift folgt die `<h2>`. Das `<h2>`-Tag kannst Du so oft einsetzen wie Du möchtest.

{% include alert warning='Die &lt;h1&gt;-Überschrift darf nur einmal pro HTML-Dokument genutzt werden.' %}

Schreibst Du einen längeren Text, kannst Du swie bei ein Buch Kapitel die Unterkapitel besitzen, auch einen Abschnitt nach einer `<h2>`-Überschrift mit `<h3>`-Überschriften gliedern. Es macht aber wenig Sinn wenn Nach einer `<h2>`-Überschrift nur eine `<h3>` und dann wieder eine `<h2>`-Überschrift folgt.

Erfahrungsgemäß reichen `<h1>` und `<h2>` für die Gliederung eines Textes vollständig aus. Nimmst Du aber z.B. einen richtig langen Artikel, wie z.B. einen WikieWikipedia-Artikel über den Film [»Guardians of the Galaxy«](https://de.wikipedia.org/wiki/Guardians_of_the_Galaxy), dann kommen auch `<h3>`-Überschriften zum Einsatz. Bleiben wir bei dem Film als Beispiel, dann gliedert sich der Text mit folgenden Zwischenüberschriften:

~~~
<h1>Guardians of the Galaxy</h1>
   <h2>Handlung</h2>
   <h2>Produktion</h2>
      <h3>2.1	Stab und Besetzung</h3>
      <h3>2.2	Synchronisation</h3>
   <h2>Rezeption</h2>
      <h3>3.1	Einspielergebnis</h3>
      <h3>3.2	Kritiken</h3>
   <h2>Fortsetzungen</h2>
   <h2>Auszeichnungen (Auswahl)</h2>
   <h2>Soundtrack</h2>
   <h2>Trivia</h2>
   <h2>Weblinks</h2>
   <h2>Einzelnachweise</h2>
~~~

Insgesamt stehen Dir für Überschriften die HTML-Tags `<h1>`, `<h2>`, `<h3>`, `<h4>`, `<h5>` und `<h6>` zur Verfügung.

## Überschriften sind wichtig für die Suchmaschinentoptimierung

Suchmaschinen wie Google untersuchen und bewerten Webseiten unter anderem anhand des HTML-Codes. Dabei sortieren die Suchmaschinen die vorkommenden Wörter in einem Text und zählen, wie oft ein Wort auf einer Webseite vorkommt.

**Soll Deine Webseite zu bestimmten Suchwörtern (Keywords) in der Suche auftauchen, dann musst Du diese Suchwörter im Text unterbringen.** Überschriften spielen hierbei eine wichtige Rolle, denn Suchmaschinen zählen nicht nur die Anzahl der Wörter, sondern schauen auch wo die Wörter im Quelltext vorkommen.

Platzierst Du Deine Suchwörter in Überschriften, dann erhalten die Suchwörter mehr Gewicht. Darum ist es wichtig, dass Du Deine Texte mit Überschriften gliederst. Das hat drei Vorteile:

1. Du bringst wichtige Suchwörter an einer wichtigen Stelle unter.
1. Du gliederst optisch Deinen Text und der Leser kann den Text besser auf kleinen Bildschirmen lesen.
1. Überschriften ziehen einen Leser in den Text, wenn er den Text nur scannt.

Beachte hierbei, dass Wörter, Begriffe und Sätze, die Du in der Hauptüberschrift nutzt, eine höhere Priorität als Abschnittsüberschriften haben.

{% include alert info='In dem Phlow-Artikel <a href="http://magazin.phlow.de/text/meldung-nachricht-news/">»Wie man eine Nachricht schreibt!«</a> lernst Du wie Du spannende Nachrichtenbeiträgen schreibst.' %}

{% include alert success='**Übung:** Gliedere Dein Impressum mit Absätzen, Überschriften und Zeilenumbrüchen. Öffne die anderen Seiten und gib allen Dokumenten eine &lt;h1&gt;-Überschrift.' %}
