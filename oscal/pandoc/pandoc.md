---
title: |-
    Pandoc: wat?
date: 2018-05-33
theme: solarized
css: ~/oscal/pandoc/main.css
incremental: true
---

![](https://media.giphy.com/media/KOVlHmbBA09XO/giphy.gif)

# Why are you here?

## the **wat**:

#. Brief history of printing
#. Differences between writing workflows
#. Separating content and layout
#. Further fidgeting

Slides: <https://github.com/alter2000/prez/>


## Text editing vs. Document editing

- At first, there were scribes
- then presses
- then typewriters
- then _electronic_ typewriters
- then _computers_ <small>(might as well shove some typewriter software in there)</small>

## The rise of WYSIWYG editors

- no need to remember escape codes
- actual rough idea of finished product at hand
- anyone can be a pro publisher, not just writer

# **MS/LibreOffice**

## The good

- Every option carefully laid out in its own category
- Focus on the document, not the data

## The bad

- Unenforced structure
- Focus on the document, not the data

## The ugly

- Every option carefully laid out in its own category
- Coexisting machine instructions and human instructions
- Format conversion? `del C:\WINDOWS\system32`

# \*$\TeX$

## Variants

- $\LaTeX$
- LuaLaTeX
- XeTeX
- MathJax
- MikTeX
- LyX
- ConTeXt
- MathJax

## The good

- Separate content and layout
- Every file is a plain text file
- Same format ever for almost half a century

## The bad

- Separate content and layout (needs a typesetter --- `*tex`)
- May or may not have Unicode support
- Almost no use in the web (except math via MathJax)

## The ugly

- Confusing syntax between the 20+ variants
- Confusing syntax in a single variant
- Confusing syntax for a plain text file

# But wait, what if we

## *add more markup* but *less*

#### Lightweight markup languages

- Markdown
- Rich Text Format
- reStructuredText
- AsciiDoc
- Emacs OrgMode
- groff

Strictly content-focused

## ConTeXt

```context
\setuphead[section][style=\bfa]
\setupbodyfontenvironment[default][em=italic]
% comment (not compiled)
\starttext
\startsection[title={ConTeXt sample}]
  This is a {\em standalone} ConTeXt document.
\stopsection
\startitemize[a] % alphabetic order
  \item aye
  \item bee
  \item see
\stopitemize
\stoptext
```

## (Pandoc) Markdown

``` {left}
heading 1
----

heading 2
====

# heading 1
## heading 2 {#custom-section-name}
...
###### heading 6

> blockquote

#. ordered list item

5. beginning with another index

- unordered list item
+ another one
* with different symbols

[link text](https://inline.link/reference)
![image alt-text/caption] (relative/reference)
[another link][1]

paragraph

ayy another paragraph with _emphasized_ (usually *italic*) and **strong**(usually __bold__) text

term
:  definition

[1]: #section-reference
```

## rST

```rst
`link text`_
|substitution|

| table     | heading       |
| :-------: | ---------:    |
| stuff     | more stuff    |
| centered  | right-aligned |

term
  definition

```

## Office Open XML (MS)

`word/document.xml:`
```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<w:document xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape" xmlns:wpsCustomData="http://www.wps.cn/officeDocument/2013/wpsCustomData" mc:Ignorable="w14 w15 wp14">
    <w:body>
        <w:p>
            <w:pPr />
            <w:r>
                <w:t>Lol tf there's just one sentence.</w:t>
            </w:r>
            <w:bookmarkStart w:id="0" w:name="_GoBack" />
            <w:bookmarkEnd w:id="0" />
        </w:p>
        <w:sectPr>
            <w:pgSz w:w="11906" w:h="16838" />
            <w:pgMar w:top="1440" w:right="1800" w:bottom="1440" w:left="1800" w:header="851" w:footer="992" w:gutter="0" />
            <w:cols w:space="425" w:num="1" />
            <w:docGrid w:type="lines" w:linePitch="312" w:charSpace="0" />
        </w:sectPr>
    </w:body>
</w:document>
```

# The magic of Pandoc

## One library for almost all document formats

```sh
pandoc some.markdown --output some.pdf
```

```sh
pandoc --standalone https://openlabs.cc/ \
    --to asciidoc -o website.txt \
    --self-contained
```

## Scientific documents

```sh
pandoc --standalone \
    --to revealjs --from markdown+<extensions> ~/presentation.md \
    -o ~/presentation.html \
    --css ~/extra.css
```

```sh
pandoc -s \
    --pdf-engine=[pdf|xe|lua]latex -o thesis.pdf thesis.tex \
    --template=~.pandoc/templates/latex.template \
    --bibliography=$(BIB_FILEPATH)
```

## More? `man pandoc`

More than 20 input and/or output formats, including docx, epub, pdf, html, slides (via slideous, slidy, reveal.js, impress.js, etc)

## Useful links

- [First Pandoc presentation](http://johnmacfarlane.net/BayHac2014/) (**note:** some command options have changed ever since)


# Questions?

## <sup>me</sup>

[https://alter2000.github.io]()

<altnate2000@gmail.com>
