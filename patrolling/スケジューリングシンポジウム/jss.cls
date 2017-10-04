%% Style file for Scheduling Symposium jss.cls
%%   2007.7.12 Shunji Tanaka
%%   2015.7.23 A4 print-size tuning, Teiji Kitajima
\newif\ifenglish
\englishfalse
\def\english{\englishtrue}

% uncomment the following line for English papers
%\english

\ifenglish
\NeedsTeXFormat{LaTeX2e}
\else
\NeedsTeXFormat{pLaTeX2e}
\fi
\ProvidesClass{jss}
  [2015/07/17 Style file for Scheduling Symposium]

\DeclareOption{onecolumn}%
  {\ClassError{jss}{Option `onecolumn' not supported}{}}
\DeclareOption{landscape}%
  {\ClassError{jss}{Option `landscape' not supported}{}}
\DeclareOption{titlepage}%
  {\ClassError{jss}{Option `titlepage' not supported}{}}
\DeclareOption{a5paper}
  {\ClassError{jss}{Option `a5paper' not supported}{}}
\DeclareOption{b4paper}
  {\ClassError{jss}{Option `b4paper' not supported}{}}
\DeclareOption{b5paper}
  {\ClassError{jss}{Option `b5paper' not supported}{}}

\ifenglish
\else
\DeclareOption{a5j}
  {\ClassError{jss}{Option `a5j not supported}{}}
\DeclareOption{b4j}
  {\ClassError{jss}{Option `b4j not supported}{}}
\DeclareOption{b5j}
  {\ClassError{jss}{Option `b5j not supported}{}}
\DeclareOption{tate}%
  {\ClassError{jss}{Option `tate' not supported}{}}
\DeclareOption{a5p}
  {\ClassError{jss}{Option `a5p not supported}{}}
\DeclareOption{b4p}
  {\ClassError{jss}{Option `b4p not supported}{}}
\DeclareOption{b5p}
  {\ClassError{jss}{Option `b5p not supported}{}}
\fi

\ifenglish
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[a4paper,11pt,twocolumn]{article}
\else
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{jarticle}}
\ProcessOptions
\LoadClass[a4j,11pt,twocolumn]{jarticle}
\fi

\setlength\textwidth{170mm}
\setlength\textheight{240mm}
\setlength\topmargin{-8mm}
\setlength\oddsidemargin{-5mm}
\setlength\evensidemargin{-5mm}
\setlength\columnsep{8mm}
\setlength\marginparwidth{0mm}
\setlength\headheight{0mm}
\let\@oddhead\@empty
\let\@evenhead\@empty
\let\@oddfoot\@empty
\let\@evenfoot\@empty

\def\@abstract{}
\def\abstract#1{\gdef\@abstract{#1}}
\def\maketitle{\par
 \begingroup
   \renewcommand\thefootnote{\fnsymbol{footnote}}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
     \long\def\@makefntext##1{\parindent 1em\noindent
             \hb@xt@1.8em{%
                 \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
   \twocolumn[\@maketitle]%
   \@thanks
 \endgroup
 \setcounter{footnote}{0}%
 \let\maketitle\relax \let\@maketitle\relax
 \let\thanks\relax \let\author\relax \let\title\relax
 \gdef\@thanks{}\gdef\@author{}\gdef\@title{}}

\def\@maketitle{%
  \newpage
  \begin{center}
    \vskip -1.2em
    {\bfseries\large\@title\par}
    \vskip 1.5em
    {\begin{tabular}[t]{c}\@author\end{tabular}\par}
    \vskip 1.0em
    \begin{tabular}{p{150mm}}
      \normalsize {\bf Abstract \hskip 0.8em}\@abstract
      \baselineskip 1.2em
    \end{tabular}
    \vskip 2.6em
  \end{center}%
  \par
}

\renewcommand\section{\@startsection {section}{1}{\z@}%
  {.5\baselineskip\@plus.7\baselineskip}{.3\baselineskip}%
    {\normalfont\large\bfseries}}
\renewcommand\section{\@startsection {section}{1}{\z@}%
  {.4\baselineskip\@plus.6\baselineskip}{.3\baselineskip}%
    {\normalfont\large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {.4\baselineskip\@plus.6\baselineskip}{.3\baselineskip}%
    {\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {.4\baselineskip\@plus.6\baselineskip}{.3\baselineskip}%
    {\normalfont\normalsize\bfseries}}

\def\@listi{\leftmargin\leftmargini
  \parsep0.5\p@\@plus0.2\p@\@minus\p@
  \topsep2\p@  \@plus0.3\p@\@minus0.5\p@
  \itemsep0.5\p@\@plus0.2\p@\@minus\p@}
\let\@listI\@listi
\def\@listii{\leftmargin\leftmarginii\labelwidth\leftmarginii
  \advance\labelwidth-\labelsep
  \topsep0.5\p@\@plus0.2\p@\@minus\p@
  \parsep0.5\p@\@plus\p@\@minus\p@
 \itemsep\parsep}
\def\@listiii{\leftmargin\leftmarginiii
  \labelwidth\leftmarginiii
  \advance\labelwidth-\labelsep
  \topsep0.2\p@\@plus\p@\@minus\p@
  \parsep\z@
  \partopsep\p@\@plus\z@\@minus\p@
  \itemsep\topsep}
\def\@listiv{\leftmargin\leftmarginiv
  \labelwidth\leftmarginiv
  \advance\labelwidth-\labelsep}

\def\presenter{\hspace*{-2.4ex}$\bigcirc$}
\endinput
%%
%% end of jss.cls
