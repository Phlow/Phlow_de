---
subtitle    : "Static Website Generator"
title       : "Hugo – For-Schleifen mit range"
---
    {{ range (where .Site.Pages "Type" "post") }}
    {{ end }}

    {{ range (.Paginator 5).Pages }}
    {{ end }}

    {{ range $name, $items := .Site.Taxonomies.categories }}
      <li><a href="{{ $.Site.BaseURL }}categories/{{ $name | urlize | lower }}">{{ $name }} &nbsp;<span>({{ len $items }})</span></a></li>
    {{ end }}

To show a list of tags.

    {{ range $name, $taxonomy := .Site.Taxonomies.tags }}
      <a href="/tags/{{ $name | urlize }}">{{ $name }}</a>
    {{ end }}

To show the most recent three posts with dates in format 9 hours ago, 3 days ago etc. Install timeago javascript plugin. In hugo insert this in your theme.

    {{ range first 3 .Site.Pages }}
      <div>
        <h5><a href="{{ .Permalink }}">{{ .Title }}</a></h5>
        <time class="timeago" datetime='{{ .Date.Format "2006-01-02T15:04:05-07:00" }}'>{{ .Date }}</time>
      </div>
    {{ end }}

To show a list of posts for a specific tag. In this case I have a tag named featured.

    {{ range .Site.Taxonomies.tags.featured }}
      <div>
        <h5><a href="{{ .Page.Permalink }}">{{ .Page.Title }}</a></h5>
        <time class="timeago" datetime='{{ .Page.Date.Format "2006-01-02T15:04:05-07:00" }}'>{{ .Page.Date }}</time>
      </div>
    {{ end }}


You can combine first and after to make a more complicated query. I am showing 3 featured posts after skipping the first one. I am also showing a featured_image that was in the content markdown in the front matter. This is the top area with the title and other parameters in your markdown post.

    {{ range after 1 (first 3 .Site.Taxonomies.tags.featured) }}
      <div>
        {{ with .Page.Params.featured_image }}<img src="{{ . }}">{{ end }}
        <h5><a href="{{ .Page.Permalink }}">{{ .Page.Title }}</a></h5>
      </div>
    {{ end }}

If you are inside of a loop you need to add $ to the beginning of .Params to access the value. http://stackoverflow.com/questions/16734503/access-out-of-loop-value-inside-golang-templates-loop

    {{ with .Params.some_variable }}{{ with $.Params.some_other_variable }}{{ . }}{{ end }}{{ . }}{{ end }}

