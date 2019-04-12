---
subtitle     : "Static Website Generator"
title        : "Hugo Variablen"
categories   : hugo
---
## Variablen

- {{ .Summary }}
- {{ .Content }}
- {{ .Title }}
- {{ .RelPermalink }}
- {{ .Permalink }}
.Params.param-name

## Eigene Variablen erstellen

{{ $myVar := value }} // assigns value to $myVar
{{ $myVar }} // prints $myVar

## Counter für range-Schleifen

Vor der Schleife legst Du den Wert des Zählers fest:

    {{ $counter := 0 }}

Innerhalb der Schleife erhöhst Du dann den Zähler mit `add $counter 1`.

    {{ $counter = add $counter 1 }}

## Gloabele Variablen erstellen

in your config.toml or theme.toml
[params]
myvariable = "testing 123"

[params.general]
mysubvariable = "more tests"
in your theme file.
{{ .Site.Params.myvariable }}
{{ .Site.Params.general.mysubvariable }}

