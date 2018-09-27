## binb [![Build Status](https://travis-ci.org/eddelbuettel/binb.svg)](https://travis-ci.org/eddelbuettel/binb) [![Package-License](http://img.shields.io/badge/license-GPL--2-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-2.0.html) [![CRAN](http://www.r-pkg.org/badges/version/binb)](https://cran.r-project.org/package=binb) [![Downloads](http://cranlogs.r-pkg.org/badges/binb?color=brightgreen)](http://www.r-pkg.org/pkg/binb)

Binb is not Beamer: Stylish pdf Presentations from RMarkdown

### Motivation

The [Beamer](https://github.com/josephwright/beamer) package is very popular for making pdf
presentations from LaTeX, and also supported from Markdown and
[RMarkdown](https://github.com/rstudio/rmarkdown). This package (currently)
provides functionality to use the following custom (LaTeX) themes for
[Beamer](https://github.com/josephwright/beamer) directly via RMarkdown: 

- [Metropolis](https://github.com/matze/mtheme) (formerly `mtheme`) by Matthias Vogelgesang
  ([longer demo](https://eddelbuettel.github.io/binb/metropolis_demo.pdf))
- [IQSS](https://github.com/IQSS/iqss-beamer-theme) by Ista Zahn
  ([longer demo](https://eddelbuettel.github.io/binb/iqss_demo.pdf))
- [Presento](https://github.com/RatulSaha/presento) by Ratul Saha
  ([longer demo](https://eddelbuettel.github.io/binb/presento_demo.pdf))

The original LaTeX styles been converted to be directly useable from
[RMarkdown](https://github.com/rstudio/rmarkdown)

### Examples

#### Metropolis

Consider the following minimal example, adapted from the original minimal example at the bottom of
the [Metropolis](https://github.com/matze/mtheme) page:

````{md}
---
title: A minimal example
author: Matthias Vogelgesang
date: \today
institute: Centre for Modern Beamer Themes
output: binb::metropolis
---

# First Section

## First Frame

Hello, world!
````

It creates a [three-page pdf file](https://eddelbuettel.github.io/binb/metropolis_minimal.pdf) which
we converted into this animated gif

![](https://eddelbuettel.github.io/binb/metropolis_minimal.gif)


#### IQSS

Similarly, for IQSS we use the following input adapting the example above but showing sections and
subsections for the nice headings it generates:

````{md}
---
title: A minimal example
author: Ista Zahn
date: \today
institute: IQSS
output: binb::iqss
---

# First Section

## First Sub-Section

### First Frame

Hello, world!

# Second Section

## Second Subsection

### Second Frame

Another planet!

````

This creates this [pdf file](https://eddelbuettel.github.io/binb/iqss_minimal.pdf) which we
converted into this animated gif:

![](https://eddelbuettel.github.io/binb/iqss_minimal.gif)


#### Presento

The following small example adapted some of the slides from original minimal example from the
[Presento](https://github.com/RatulSaha/presento) repo:

```{md}
---
author: Ratul Saha
address: www.ratulsaha.com
title: PRESENTO
subtitle: clean, simple and extensible
date: \today
output: binb::presento
---

## Presento

- \begin{center}\largetext{The design is \underline{clean}}\end{center}    \bigskip
- \begin{center}\largetext{The rules are \underline{simple}}\end{center}   \bigskip
- \item \begin{center}\largetext{The code is \underline{extensible}}\end{center}


## Open Source Fonts

-  \montserratfont This is \textsc{Montserrat}	\bigskip
-  \notosansfont This is \textsc{Noto Sans}		\bigskip
-  \latolightfont This is Lato (light)          \bigskip
-  \inconsolatafont This is inconsolata         \bigskip
-  \textsc{This is Alegreya Sans small caps}    \bigskip


## Color Palette

\begin{center}
  \crule[colordgray] \crule[colorhgray] \crule[colorblue] \crule[colorgreen] \crule[colororange]
\end{center}

____

\begin{center}
 \hugetext{BIG BOLD TEXT} 
 \medskip 
 \small but background color does not work
\end{center}

____

\tikz[overlay,remember picture] \node[opacity=0.8, at=(current page.center)]{%
  \includegraphics[width=\paperwidth]{images/skeleton}};
\begin{textblock}{7}(7,2.5)
  {\color{colorblue}\hugetext{\textbf{RUN!}}}
\end{textblock}

```

From this, one can creats this [pdf file](https://eddelbuettel.github.io/binb/presento_minimal.pdf)
which can be converted into this animated gif:

![](https://eddelbuettel.github.io/binb/presento_minimal.gif)

        
### Status

The package is fairly new and susceptible to change, but on
[CRAN](https://cran.r-project.org/).

### Usage 

The package is on [CRAN](https://cran.r-project.org/) and can be installed
via a standard

```r
install.packages("binb")
```

and can then be used as a Markdown template via RStudio, or via code such as

```r
library(rmarkdown)
draft("myslides.Rmd", template="metropolis", package="binb", edit=FALSE)
setwd("myslides")  ## template creates a new subdir
render("myslides.Rmd")
```

to create a first draft of a new `myslides.Rmd`.

Once installed, the above code examples should work as expected.

### Requirements

Beyond the R package dependencies, a working `pandoc` binary is needed. RStudio installs
its own copy, otherwise do what is needed on your OS (_i.e._, something like `sudo apt-get
install pandoc pandoc-citeproc`).

The [Metropolis](https://github.com/matze/mtheme) LaTeX package is used, but we assume
that is is installed via TeXLive, MikTeX or another LaTeX bundle. The LaTeX code for the
[IQSS Beamer Theme](https://github.com/IQSS/iqss-beamer-theme) and the [Presento
Theme](https://github.com/RatulSaha/presento) are included (and adapted for
[RMarkdown](https://github.com/rstudio/rmarkdown) use).

These themes use additional (free) fonts you may need to install:

- [Metropolis](https://github.com/matze/mtheme) wants [Fira Sans](https://github.com/mozilla/Fira)
  but can proceed with alternate fonts;
- [IQSS Beamer Theme](https://github.com/IQSS/iqss-beamer-theme) really requires
  [Libertinus](https://github.com/libertinus-fonts/libertinus), see the
  [IQSS Beamer Theme](https://github.com/IQSS/iqss-beamer-theme)  page for details.
- [Presento Theme](https://github.com/RatulSaha/presento) wants 
  [Montserrat](https://github.com/JulietaUla/Montserrat), 
  [Lato Light](http://www.latofonts.com/) 
  (also [here](https://github.com/google/fonts/tree/master/ofl/lato)),
  [Noto Sans](https://www.google.com/get/noto),
  [Algreya Sans](https://github.com/huertatipografica/Alegreya-Sans) as the small caps font and 
  [Inconsolata](https://github.com/google/fonts/tree/master/ofl/inconsolata) as a monospaced font.

If you use [Debian](https://www.debian.org) or [Ubuntu](https://www.ubuntu.com), you can
use the informal font packages I created for [Fira and Fira
Sans](https://github.com/eddelbuettel/pkg-fonts-fira),
[Libertinus](https://github.com/eddelbuettel/pkg-fonts-libertinus),
[Montserrat](https://github.com/eddelbuettel/pkg-fonts-montserrat), [Alegreya
Sans](https://github.com/eddelbuettel/pkg-fonts-alegreya-sans), respectively.

Most modern desktop systems make it easy to install additional fonts as a user. However,
instructions vary so please see for your particular system.

### Authors

Dirk Eddelbuettel and Ista Zahn.

### License

GPL-2 for this package.
