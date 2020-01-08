---
weight              : 025
subtitle            : 'Webdesign Grundlagen'
title               : 'HTML: Semantik-Elemente'
youtube             : 
categories          : html-grundlagen
slug                : html-semantik
---
Semantik ist die Lehre, die die Bedeutung von Inhalten erfasst. Damit Suchmaschinen Deine Inhalte besser erfassen und »verstehen« können, helfen die folgenden HTML-Befehle Deine Webseiten zu strukturieren.
<!--more-->

So kennzeichnest Du z.B. mit `<nav>` einen Bereich für Navigationselemente. Mit `<article>` umklammerst Du den Bereich der Webseite, der Deinen eigentlichen Inhalt beinhaltet, z.B. ein Blog-Beitrag. Im Folgenden lernst Du die wichtigsten semantischen HTML-Befehle kennen.

{{< toc >}}

Im Folgenden erkläre ich Dir schrittweise, wie Du die HTML-Befehle richtig für die [Semantik](https://de.wikipedia.org/wiki/Semantik) einer Webseite einsetzt.

## &lt;header&gt; und &lt;footer&gt;

In der Regel beinhaltet jede Webseite eine Kopfzeile und eine Fußzeile und dazwischen einen Hauptinhalt. In die Kopfzeile `<header>` kommt z.B. die Navigation und in die Fußzeile `<footer>` z.B. Links, wie z.B. zum [Impressum]({{< ref "html-grundlagen-030-impressum.md" >}}) und zur Datenschutzerklärung. Das sieht dann so aus:

~~~
<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <title>Semantik</title>
  </head>
<body>
  <header>
  </header>

  <footer>
  </footer>
</body>
</html>
~~~

## &lt;main&gt; – Hauptinhalt einer Webseite

Mit `<main>` kennzeichnest Du einen Bereich der Webseite, der einzigartig ist. Meistens beinhaltet `<main>` den individuellen Inhalt einer Webseite und z.B. nicht die immer wiederkehrende Navigation. `<main>` darf kein Nachfolger eines `<article>`-, `<aside>`-, `<footer>`-, `<header>`- oder `<nav>`-Elements sein.

Auch wenn das `<main>` Element flächendeckend unterstützt wird – nur beim Internet Explorer nicht – solltest Du dem <main>-Element zur Sicherheit, das "main" ARIA role dem <main> Element hinzufügen.

~~~
<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <title>Semantik</title>
  </head>
<body>
  <header>
  </header>

  <main role="main">
  </main>

  <footer>
  </footer>
</body>
</html>
~~~

## &lt;nav&gt; – Navigation markieren

Mit `<nav>` kennzeichnest Du den Bereich einer Navigation. Wenn Du z.B. in der Kopfzeile und im Fußbereich einer Seite Links für eine Navigation unterbringst, dann umklammerst Du den Bereich mit `<nav>`.

~~~
<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <title>Semantik</title>
  </head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="#">Link 1</a></li>
        <li><a href="#">Link 2</a></li>
        <li><a href="#">Link 3</a></li>
      </ul>
    </nav>
  </header>

  <main role="main">
  </main>

  <footer>
  </footer>
</body>
</html>
~~~

## &lt;article&gt;

~~~
<article>
  <header>
    <h1>Semantik</h1>
  </header>
  <section class="beitrag">
  </section>
  <section class="kommentare">
    <article class="kommentar">
      <p>Viel zu beängstigend für mich.</p>
      <footer>
      </footer>
    </article>
  </section>
  <footer>
  </footer>
</article>
~~~


## &lt;section&gt;

## &lt;aside&gt;

Mit dem `<aside>`-Element kennzeichnest Du eine Sektion einer Seite, die aus Inhalt besteht der nur indirekt zum restlichen Inhalt gehört. Das wäre z.B. bei einem Rezept-Artikel eine Infobox mit den Zutaten in Form einer Liste.








https://developer.mozilla.org/de/docs/Web/HTML/Element/article





