---
subsection: socialmedia
title: "Social Media: Aktuelle Entwicklungen, Trends und Studien"
categories : Soziale Netzwerke
date                : 2018-03-20
slug : /social-media-news/
---
Soziale Netzwerke verändern sich konstant. Ob neue Funktionen, sich
ändernde Nutzerzahlen oder wechselndes Nutzerverhalten… Alles ist im
konstanten Fluss. An dieser Stelle finden Sie aktuelle Entwicklungen,
neue Studien und Nachrichten rund um die populären Netzwerke.
<!-- readmore -->

{% for news in site.data.news %}

{% if news.date %}

{{ news.date }}

{% endif %}

{{ news.title }}

{% if news.description %}{{ news.description }}{% endif %}

Quelle aufrufen ›

{% endfor %}
