\name{NEWS}
\title{News for Package \pkg{binb}}
\newcommand{\ghpr}{\href{https://github.com/eddelbuettel/binb/pull/#1}{##1}}
\newcommand{\ghit}{\href{https://github.com/eddelbuettel/binb/issues/#1}{##1}}

\section{Changes in binb version 0.0.6 (2020-06-10)}{
  \itemize{
    \item Support for YAML option \code{titlegraphic} was added in
    Metropolis (Andras Scraka in \ghpr{23}).
    \item The README.md file received another badge (Dirk).
    \item The \code{natbib} default value was updated to accomodate
    \pkg{rmarkdown} (Joseph Stachelek in \ghpr{26}).
  }
}

\section{Changes in binb version 0.0.5 (2019-11-02)}{
  \itemize{
    \item The Monash theme was updated with new titlepage and font
    handling and an expanded demo (Rob in \ghpr{20}).
    \item The presento theme is now correctly labeled as exported (David
    Selby in \ghpr{22}).
    \item The two Monash demos are now referenced from README.md (Dirk).
  }
}

\section{Changes in binb version 0.0.4 (2019-06-23)}{
  \itemize{
    \item The Monash theme now has improved color theme handling (Rob
    Hyndman in \ghpr{15}).
    \item The Monash them has a demo, a new \code{tighttoc} option and
    other small improvements (Rob Hyndman in \ghpr{16}).
    \item A slide notes example was added to Metropolis, pgfpages can be
    used if present, \code{beameroption} was added to three templates
    (Johan Larsson in \ghpr{17}).
    \item The Presento them now use the date from the yaml header
    (Joseph Stachelek in \ghpr{18}).
  }
}

\section{Changes in binb version 0.0.3 (2018-10-12)}{
  \itemize{
    \item The IQSS theme now has a fallback font if Libertinus is
    unavailable (Ista in \ghpr{7})
    \item Added support for 'Monash' theme (Rob Hyndman in \ghpr{10} and
    \ghpr{11} closing \ghit{9})
    \item Simplified some options for the 'Monash' theme (Dirk in
    \ghpr{13}) 
    \item The IQSS theme can now set an alternate titlegraphic (Ista in
    \ghpr{14}) 
  }
}

\section{Changes in binb version 0.0.2 (2018-09-27)}{
  \itemize{
    \item Added support for 'Presento' theme by Ratul Saha (\ghpr{4})
    \item Longer vignettes were added to the docs/ directory
    \item The gif files in docs/ were regenerated with the density
    argument to convert set to 127 (Mikko Korpela in \ghpr{5})
  }
}

\section{Changes in binb version 0.0.1 (2018-09-19)}{
  \itemize{
    \item Initial CRAN release supporting Metropolis and IQSS
  }
}
