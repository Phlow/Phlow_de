---
subtitle          : Suchmaschinenoptimierung
title             : 'Die wichtigsten HTML-Befehle für die SEO'
categories        : seo-anleitung
slug              : seo-wichtigste-html-befehle
---
»Suchmaschinenoptimierung Teil 3« zeigt Ihnen, wie Sie optimale Keywords (Suchworte, Schlagwörter) für Ihre Artikel recerchieren, aussuchen und nutzen.
<!-- readmore -->

Generell gilt: Je spezieller die Inhalte, desto größer ist die Wahrschein&shy;lichkeit, eine gute Platzierung in den Suchmaschinen zu erreichen. Das sogenannte »Ranking« beeinflussen Sie maßgeblich, indem Sie Ihr Material sinnvoll aufarbeiten. Denn ein Dokument wird nur dann Teil eines Suchergebnisses, wenn es das gesuchte Wort als Begriff enthält.Darum gehört zu den wichtigsten Aufgaben die Wahl der geeigneten Schlüsselwörter.

{{< toc >}}

*Onsite-Optimierung* bezeichnet das Tuning am eigenen HTML-Code sowie die Aufwertung der Seiteninhalte. Im ersten Schritt sorgt man dafür, dass der Code intakt ist. Darum bauen Sie Ihre Website nach den üblichen Webstandards auf und strukturieren Sie den Code logisch: wichtige Inhalte müssen nach vorne gezogen werden, z.B. die Überschrift.

Wenn Sie sich nicht sicher sind, ob Ihr Quellcode korrekt ist, überprüfen Sie ihn mit einem Onlinetool, z.B. mit dem [W3C Markup Validation Service](https://validator.w3.org/) oder benutzen Sie für Firefox die hervorragende Erweiterung HTML-Validator. Ich kann Letztere sehr empfehlen.

.Die HTML-Code-Qualität prüft man einfach mit dem W3C Markup Validation Service
{{< amp/img src="/images/suchmaschinenoptimierung-html-optimieren-578x380.png" width="" height="" alt="Suchmaschinenoptimierung HTML überprüfen" >}}

Wie ein Buch, ein Dossier oder Ähnliches hat auch eine Webseite einen einheitlichen Aufbau. Dieser unterscheidet sich kaum von den oben genannten Formaten. Auch eine Webseite braucht einen Titel, eine inhaltliche Kurzbeschreibung und einen Ort – hier die URL –, an dem man das Dokument findet.

## `<title>` – Jedes Dokument braucht eine Überschrift

Wie bei einem normalen, journalistisch einwandfreien Artikel, ist auch bei einer Webseite die Überschrift ein maßgeblicher Faktor dafür, ob sie angeschaut wird. Denken Sie daran, dass die Überschrift nicht nur auf Ihrer Website auftaucht. Auch in RSS-Readern, in Bookmarks oder anderen Websites taucht dieser Titel auf.

{{< amp/img src="/images/journalismus/suchmaschinenoptimierung-html-befehl-1-1024-261.png" width="1024" height="261" alt="SEO" >}}

Im Vergleich zum Printmedium richtet sich die Überschrift aber nicht nur an den Leser, sondern auch an eine »dumme« Maschine, die lediglich auf Algorithmen basiert. Während ein Leser »Prinz Poldi« in Beziehung zu »Lukas Podolski« setzt, verbindet bzw. assoziert die Suchmaschine einen derartigen Artikel nicht unbedingt mit dem Fußballspieler, es sei denn, die Suchmaschine hat nach zahlreichen Links einen Zusammenhang erkannt.

Sucht jemand z.B. »Lukas Podolski«, listet die Suchmaschine nicht automatisch einen passenden Artikel wie »Prinz Poldi« auf, sondern nur dann, wenn die Keywords »Lukas Podolski« kontinuierlich im Artikel auftauchen.

Darum ist es ratsam, die primär wichtigen Keywords im Titel zu nennen. Diese Wörter positionieren Sie eingerahmt durch das `<title>`-Tag eines HTML-Dokuments, auf das die Suchmaschinen für Ihre Suchergebnisse zurückgreifen. Verschwenden Sie dabei nicht zu viele Zeichen für den Namen Ihres Weblogs bzw. Ihrer Website. Auch auf einen Slogan sollten Sie verzichten, wenn er nicht wirklich wichtige Keywords enthält, die in jedem Dokument auftauchen sollen. Hier ein Beispiel:

    <title>»Lukas Podolski: Prinz Poldi auf dem falschen Fuß erwischt«</title>

Wenn möglich, sollte der Titel kurz und knackig sein und nur wenige Keywords und Wörter beinhalten. Auf den Punkt getextete Überschriften helfen auch dem Leser bei der Suche, während er Inhalte überfliegt. Benutzen Sie am besten maximal 70 Zeichen, denn dadurch verhindern Sie, dass Google Ihre Überschrift selbst kürzt.

{{< info >}}
Bei der Eingabe eines neuen WordPress-Artikels können Sie sowohl den Titel des Dokuments als auch die URL nach Ihren Vorlieben gestalten. Dabei setzt sich der Inhalt zwischen den &lt;title&gt;-Tags eines einzelnen Dokuments in der Regel aus dem Namen des Blogs, der Kategorie und dem Artikelnamen zusammen.<br>
Wie und in welcher Reihenfolge die »Zutaten« angezeigt werden, hängt vom jeweiligen Theme ab. Um den Namen der URL zu ändern, müssen Sie den Artikel mindestens einmal abgespeichert haben. Dann wird der Button Bearbeiten eingeblendet, wie in Abbildung 7-6 zu sehen ist. Über einen Klick auf den Button erhalten Sie die Möglichkeit, die URL zu gestalten.
{{< /info >}}

{{< amp/img src="/images/journalismus/suchmaschinenoptimierung-html-befehl-1-1024-261.png" width="1024" height="261" alt="SEO" >}}

## Jedes Dokument benötigt eine Description

Neben einem exzellenten Titel liegt die große Kunst darin, eine packende und überzeugende Kurzbeschreibung des auf der Webseite angebotenen Inhalts zu verfassen.** Dafür stehen Ihnen in der Regel maximal 150 Zeichen zur Verfügung. Leerzeichen zählt Google mit. In seltenen Fällen zeigt Google auch maximal 320 Zeichen an. Das HTML-Tag lautet dafür:

    <meta name="description" content="Text für die Beschreibung">

Diese Kurzbeschreibung muss Leser zum Klicken animieren, muss die wichtigsten Keywords beinhalten und auch noch gut klingen. Obendrein positioniert man auch noch die Keywords so weit vorn im Text wie möglich. Hilfreich für die Optimierung einer Kurzbeschreibung ist auch das https://de.wikipedia.org/wiki/AIDA-Modell[AIDA-Prinzip].

Aber gerade diese Herausforderungen machen die Suchmaschinenoptimierung spannend und verbessern oftmals Ihre Schreibfähigkeiten. Sie werden einfach gezwungen, so schnell wie möglich auf den Punkt zu kommen – eine der wichtigsten Regeln im Journalismus. Haben Sie die Kurzbeschreibung getextet, muss diese im Description-Metatag auftauchen.

    <meta name="description" content="Jeannette Corneille (Köln) bietet Kommunikation und Design mit den Schwerpunkten Illustration auf und mit Stoff, Collagen und Zeichnungen." />

Gleichzeitig empfehle ich, diese Kurzbeschreibung nicht nur in den Metadaten der Webseite auftauchen zu lassen, sondern auch so weit wie möglich vorn im Artikel, z.B. als Anreißer. So »sieht« die Suchmaschine, dass die Kurzbeschreibung in den Metadaten und auf der Webseite auftauchen und kein Spamming vorliegt. Je konsistenter Ihre Artikel sind, desto besser.

## Jedes Dokument benötigt eine lesbare, suchmaschinenfreundliche URL

Das letzte und nicht zu unterschätzende Element ist die URL eines Artikels. Beobachten Sie sich einmal selbst, wenn Sie Inhalte per Google & Co. suchen. Oftmals unbewusst oder mit einem kurzen Blick überprüfen Sie als Suchender die URL. Kenne ich bereits die Website? Welche Begriffe tauchen in der URL auf? Ist die URL verständlich und logisch aufgebaut?

Platzieren Sie die gleichen Keywords darum auch im Dateinamen oder der URL des Dokuments und achten Sie auf eine sinnvolle Baumstruktur Ihrer Website. Diese Struktur sollte den Aufbau Ihrer Website widerspiegeln. Vertraut Google Ihrer Website, ersetzt die Suchmaschine Links mittlerweile auch durch eine eigens generierte Breadcrumb-Navigation. So klicken Surfer sicherlich eher auf einen verständlichen als auf einen ominösen Link, der aus einer wirren Kombination von Zeichen besteht. Aussagelos wäre beispielsweise ein solcher Link:

    http://www.domain.de/arc/item=023759

Ansprechender und sinnvoller ist der folgende Link zum gleichen
Inhalt:

    http://www.domain.de/biografie/journalist-mustermann.html

Vermeiden Sie Übertreibungen – das sogenannte Keyword-Stuffing.Dieses werten Suchmaschinen möglicherweise als Spam-Versuch:

    http://www.domain.de/biografie/biografie/biografie-journalistmustermann.html

{{< info >}}
WordPress eignet sich hervorragend für die Suchmaschinenoptimierung. Die Struktur der Permalinks beeinflussen Sie im Backend in den Einstellungen unter Permalinks.
{{< /info >}}

Merken Sie sich auch die folgenden Richtlinien zum URLDesign:

* Benutzen Sie den Bindestrich bzw. das Minuszeichen zum Trennen von Keywords.
* Überschreiten Sie nicht eine Verzeichnistiefe von mehr als drei Unterverzeichnissen. Je weiter unten ein Dokument in der Baumstruktur angeordnet ist, desto weniger Bedeutung wird ihm beigemessen.
* Vermeiden Sie PHP-Parameterangaben in der URL, denn Zeichen wie »?« oder »&« verschlechtern das Ergebnis, weil Google diese Dokumente als dynamisch einstuft. Das bedeutet: je statischer eine Webseite, desto besser.
