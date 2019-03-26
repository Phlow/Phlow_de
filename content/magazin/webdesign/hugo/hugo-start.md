---
subtitle    : "Static Website Generator"
title       : "Hugo starten – Die Terminal Kommandos"
---
## Die wichtigsten Kommandos für das Terminal

`hugo new site ORDNERNAME`
: Legt ein neues Hugo-Projekt an

`hugo new theme [name]`
: Legt ein fast leeres neues Theme an

`hugo server`
: Startet den Hugo-Live-Server für die Entwicklung

`hugo config`
: Listet alle gesetzten Konfigurationsparameter auf

`hugo -t themename`
: Startet Hugo mit dem Theme _themename_

In der Dokumentation findest Du die Übersicht 
[Aller Befehle der Hugo CLI](https://gohugo.io/getting-started/usage/).

## Theme festlegen

## Struktur eines Hugo-Projektes

~~~
.
├── archetypes
├── assets
├── config
├── content
├── data
├── layouts
├── static
└── themes
~~~

archetypes
: Vorlagen für neue Beiträge, die Du mit `hugo new` kreieren kannst.

assets
: Beinhaltet Dateien, die Hugo verarbeiten soll, z.B. *.scss*, *.postcss*,…

config
: Ort für die Konfigurationsdatei(en)

content
: Ordner für alle Inhalte.

data
: Hugo verarbeitet auf Wunsch Daten, die in Webseiten eingebunden werden sollen.

layouts
: Vorlagen für Deine Webseiten.

static
: In diesen Ordner gehören Bilder, Javascripte, Fonts, Mediendateien,…






/partials/pagination.html
{{ $baseurl := .Site.BaseURL }}
{{ $pag := .Paginator }}
{{ if gt $pag.TotalPages 1 }}
<nav class="center">
    <div class="pagination">
        <div class="row">
{{ if $pag.HasPrev }}
<a class="prev page-numbers" href="{{ $baseurl }}{{ $pag.Prev.URL }}"><span class="glyphicon  glyphicon-chevron-left"></span></a>
{{ end }}
    <div class="pagination__page-numbers">{{ range $pag.Pagers }}{{ if eq . $pag }}<span class='page-numbers current'>{{ .PageNumber }}</span>{{ else }}<a class='page-numbers' href='{{ $baseurl }}{{ .URL }}'>{{ .PageNumber }}</a>{{ end }}{{ end }}</div>
{{ if $pag.HasNext }}
                <a class="next page-numbers" href="{{ $baseurl }}{{ $pag.Next.URL }}"><span class="glyphicon  glyphicon-chevron-right"></span></a>
{{ end }}
            </div>
        </div>
</nav>
{{ end }}
in your index.html or wherever you wish to paginate.  This is pulling only those items in the post subdirectory.  in config.toml for your site place paginate=5 or to any amount of posts you want per page.
{{ $pag := .Paginate (where .Data.Pages "Type" "post")}}
{{ range $pag.Pages}}
{{ partial "some_content" . }}
{{ end }}
    {{ partial "pagination" . }}




Show 3 related links to a story based on similar tags. Found the solution here. https://discuss.gohugo.io/t/show-a-list-of-related-content/1488/5

{{ $page_link := .Permalink }}
{{ $categories := .Params.categories }}
{{ range $page := .Site.Pages }}
{{ $has_common_categories := intersect $categories .Params.categories | len | lt 0 }}
{{ if and $has_common_categories (ne $page_link $page.Permalink) (lt ($.Scratch.Get "$c") 3)}}
{{ $.Scratch.Add "$c" 1 }}
<h4><a href="{{ $page.Permalink }}">{{ $page.Title }}</a></h4>
<h5>{{ $page.Description }}</h5>
<hr>
{{ end }}
{{ end }}