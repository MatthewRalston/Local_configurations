# README
Copyright 2014
This folder contains my local bash and emacs configuration. Currently installed emacs modules can be found in Modules.md

##Special configurations
* Ruby autocompletion
Currently, rsense and autocomplete.el are configured to provide ruby autocompletion with C-tab
* Emacs Speaks Statistics
Emacs speaks statistics is configured to deliver code to interactive server and return output via X11 with Cairo graphic support:


```
M-x ssh [ENTER] servername [ENTER] -X -l username [ENTER]
```

```
[Stats REPL, e.g. R]
```

```
M-x ess-remote
```

Evaluate line
```
C-c C-j
```

Evaluate highlighted region and step
```
C-c C-c
```


* Flyspell
Flyspell is configured to use F10 as a spell check key, mostly because my
Microsoft Natural ergonomic keyboard has "Spell" written on the F10 key.

Spellcheck Buffer
```
C-M F10
```

Spellcheck current word.
```
F10
```

Spellcheck next highlighted word
```
C-F10
```

Spellcheck previous highlighted word
```
M-F10
```

Toggle Flyspell mode
```
C-Shift F10
```

* Emacs Org-mode task timer

Clock in
```
C-c C-x C-i
```

Clock out
```
C-c C-x C-o
```

Timing report
```
C-c C-x C-r
```

Update report
```
C-c C-c
```

##Future work
In the future, I will be adding additional configurations for LaTeX.

