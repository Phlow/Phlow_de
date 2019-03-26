---
subtitle    : "Static Website Generator"
title       : "Hugo Variablen"
---
## Variablen

- {{ .Summary }}
- {{ .Content }}
- {{ .Title }}
- {{ .RelPermalink }}
- {{ .Permalink }}
.Params.param-name

Eigene Variablen

{{ $myVar := value }} // assigns value to $myVar
{{ $myVar }} // prints $myVar

To add custom global variables.

in your config.toml or theme.toml
[params]
myvariable = "testing 123"

[params.general]
mysubvariable = "more tests"
in your theme file.
{{ .Site.Params.myvariable }}
{{ .Site.Params.general.mysubvariable }}

