\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\ProvidesClass{uioexam}[2015/06/01 v 3.12 UiO document class]
\newcommand{\exam@english}{
  \def \exam@aidstext {Permitted aids}
  \def \exam@any {Any}
  \def \exam@candidate {Candidate no}
  \def \exam@caution {Please make sure that your copy of the 
    \exam@exercise\ set is\\
    complete before you attempt to answer anything}
  \def \exam@consists {This \exam@exercise\ set consists of}
  \def \exam@contents {\exam@Exercise s}
  \def \exam@continued {Continued on page}
  \def \exam@day {Day of examination}
  \def \exam@encltext {Appendices}
  \def \exam@examin   {Exam in}
  \def \exam@examinD  {Constituent exam in}
  \def \exam@examinDN {New constituent exam in}
  \def \exam@examinDNU{New and deferred constituent exam in}
  \def \exam@examinDU {Deferred constituent exam in}
  \def \exam@examinN  {New exam in}
  \def \exam@examinNU {New and deferred exam in}
  \def \exam@examinU  {Deferred exam in}
  \def \exam@faculty {Faculty of mathematics and natural sciences}
  \def \exam@hours {Examination hours}
  \def \exam@none {None}
  \def \exam@page {Page}
  \def \exam@pages {pages}
  \def \exam@sectionname {\exam@Exercise}
  \def \exam@univ {UNIVERSITY OF OSLO}
  \def \exam@weight {weight}}
\exam@english
\newcommand{\exam@norwegian}{
  \def \exam@aidstext {Tillatte hjelpemidler}
  \def \exam@any {Alle}
  \def \exam@candidate {Kandidatnr}
  \def \exam@caution {Kontroller at oppgavesettet er komplett f\o r\\
    du begynner \aa\ besvare sp\o rsm\aa lene}
  \def \exam@consists {Oppgavesettet er p\aa}
  \def \exam@contents {Oppgaveoversikt}
  \def \exam@continued {Fortsettes p\aa\ side}
  \def \exam@day {Eksamensdag}
  \def \exam@encltext {Vedlegg}
  \def \exam@examin   {Eksamen i}
  \def \exam@examinD  {Deleksamen i}
  \def \exam@examinDN {Ny deleksamen i}
  \def \exam@examinDNU{Ny og utsatt deleksamen i}
  \def \exam@examinDU {Utsatt deleksamen i}
  \def \exam@examinN  {Ny eksamen i}
  \def \exam@examinNU {Ny og utsatt eksamen i}
  \def \exam@examinU  {Utsatt eksamen i}
  \def \exam@faculty {Det matematisk-naturvitenskapelige fakultet}
  \def \exam@hours {Tid for eksamen}
  \def \exam@none {Ingen}
  \def \exam@page {Side}
  \def \exam@pages {sider}
  \def \exam@sectionname {Oppgave}
  \def \exam@univ {UNIVERSITETET I OSLO}
  \def \exam@weight {vekt}}
\newcommand{\exam@nynorsk}{\exam@norwegian
  \def \exam@aidstext {Tillatne hjelpemiddel}
  \def \exam@caution {Kontroller at oppg\aa vesettet er komplett f\o r\\
    du tek til \aa\ svare p\aa\ sp\o rsm\aa la}
  \def \exam@consists {Oppg\aa vesettet er p\aa}
  \def \exam@contents {Oversikt over oppg\aa vene}
  \def \exam@continued {Framhald p\aa\ side}
  \def \exam@examinDNU{Ny og utsett deleksamen i}
  \def \exam@examinDU {Utsett deleksamen i}
  \def \exam@examinNU {Ny og utsett eksamen i}
  \def \exam@examinU  {Utsett eksamen i}
  \def \exam@faculty {Det matematisk-naturvitskaplege fakultet}
  \def \exam@none {Ingen}
  \def \exam@sectionname {Oppg\aa ve}}
\RequirePackage{ifthen}
\DeclareOption{10pt}{\ClassWarningNoLine{uioexam}{Do not
        use type size `10pt'}%
    \def \exam@size {11pt}}
\DeclareOption{11pt}{\def \exam@size{11pt}}
\DeclareOption{12pt}{\def \exam@size{12pt}}
\DeclareOption{american}{\exam@english
  \PassOptionsToPackage{american}{babel}}
\DeclareOption{english}{\exam@english
  \PassOptionsToPackage{english}{babel}}
\DeclareOption{norsk}{\exam@norwegian
  \PassOptionsToPackage{norsk}{babel}}
\DeclareOption{nynorsk}{\exam@nynorsk
  \PassOptionsToPackage{nynorsk}{babel}}
\DeclareOption{UKenglish}{\exam@english
  \PassOptionsToPackage{UKenglish}{babel}}
\DeclareOption{USenglish}{\exam@english
  \PassOptionsToPackage{USenglish}{babel}}
\DeclareOption{exercise}{
  \def \exam@exercise {exercise} 
  \def \exam@Exercise {Exercise}}
\DeclareOption{problem}{
  \def \exam@exercise {problem} 
  \def \exam@Exercise {Problem}}
\DeclareOption{del}{\def \exam@del{D}\addtolength{\exam@width}{4mm}}
\DeclareOption{ny}{\def \exam@ny{N}\addtolength{\exam@width}{4mm}}
\DeclareOption{utsatt}{\def \exam@utsatt{U}\addtolength{\exam@width}{4mm}}
\AtBeginDocument{%
  \renewcommand{\thesubsection}{\arabic{section}\alph{subsection}}}
\DeclareOption{plainsub}{\AtBeginDocument{%
  \renewcommand{\thesubsection}{\alph{subsection}}}}
\DeclareOption{number}{\setboolean{exam@number}{true}}
\newboolean{exam@number}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\def \exam@size {12pt}
\ExecuteOptions{problem}
\def \exam@del{}
\def \exam@ny{}
\def \exam@utsatt{}
\newlength{\exam@width}  \setlength{\exam@width}{0cm}
\ProcessOptions \relax
\RequirePackage{calc}
\RequirePackage{pifont}
\newcounter{exam@choice}
\LoadClass[a4paper,\exam@size]{article}
\addtolength{\topmargin}{-1.7cm}
\addtolength{\textheight}{3cm}
\tolerance=6000  \hbadness=\tolerance  \pretolerance=3000
\newcommand{\ps@examfirst}{%
  \def\@evenhead{\exam@info}\def\@oddhead{\exam@info}%
  \def\@evenfoot{\exam@foot}\def\@oddfoot{\exam@foot}}
\newcommand{\ps@exammain}{%
  \def\@evenhead{\exam@head}\def\@oddhead{\exam@head}%
  \def\@evenfoot{\exam@foot}\def\@oddfoot{\exam@foot}}
\newcommand{\exam@head}{{\normalfont\slshape
  \exam@examin\ \exam@id, \exam@date \hfill \exam@page\ \thepage}}
\newcommand{\exam@foot}{\ifthenelse{\thepage=\Npages}
  {}
  {{\normalfont\slshape \setcounter{exam@temp}{\thepage + 1}%
      (\exam@continued\ \arabic{exam@temp}.)\hfill}}}
\newcommand{\exam@info}{%
  \raisebox{0pt}[0pt][0pt]{\begin{minipage}[t]{\textwidth}
    \normalfont
\fontfamily{cmss}\fontsize{14.4}{14pt}\selectfont
    \ifthenelse{\boolean{exam@number}}{\exam@printnumberbox}{}%
    {\centering
  \fontsize{25}{25pt}\bfseries \exam@univ\\[4mm]
  \fontsize{20.7}{20pt}\mdseries \exam@faculty
  \par}
\vspace{8mm}
    \ifthenelse{\equal{\exam@timea}{}}%
  {\def \exam@timeline{\\}}%
  {\def \exam@timeline{\\\exam@hours:& 
      \exam@timea\,--\,\exam@timeb\\}}
{\renewcommand{\arraystretch}{1.6}%
  \leavevmode\hspace*{-\exam@width}\begin{tabular}{@{}ll@{}}
  \csname exam@examin\exam@del\exam@ny\exam@utsatt\endcsname:& 
    \exam@breakable{\exam@id~\exam@dash~\exam@title}\\
  \exam@day:& \exam@date \exam@timeline
  \multicolumn{2}{@{}l@{}}{\exam@consists\ \Npages\ \exam@pages.}\\
  \exam@encltext:& \exam@breakable{\exam@encl}\\
  \exam@aidstext:& \exam@breakable{\exam@aids}\\
\end{tabular}\hspace*{-\exam@width}}\par
\vspace{8mm}
    {\centering
  \exam@caution.
  \par}
    \end{minipage}}}
\pagestyle{exammain}\thispagestyle{examfirst}
\newcounter{exam@temp}
\newcommand{\exam@printnumberbox}{%
  \raisebox{0pt}[0pt][0pt]{\rlap{\makebox[\textwidth-5mm][r]{}%
    \begin{tabular}{c}\fbox{\rule{0cm}{1cm}\rule{1.6cm}{0cm}}\\ 
      \scriptsize \exam@candidate\\
    \end{tabular}}}}
\newcommand{\exam@breakable}[1]{{%
  \renewcommand{\arraystretch}{1.1}%
  \begin{tabular}[t]{@{}l@{}}
    #1\\ 
  \end{tabular}}}
\AtBeginDocument{\vspace*{7.5cm}}
\renewcommand{\@seccntformat}[1]{%
  \csname exam@#1name\endcsname\csname exam@#1space\endcsname
  \csname the#1\endcsname \hspace*{1em}}
\newcommand{\exam@sectionspace}{~}
\newcommand{\oppgave}[2][]{%
  \ifthenelse{\equal{#1}{}}%
    {\section{#2}}%
    {\section{#2\hspace{0.8em}\mdseries (\exam@weight~#1)}}}
\newcommand{\deloppgave}[2][]{%
  \ifthenelse{\equal{#1}{}}%
    {\subsection{#2}}%
    {\subsection{#2\hspace{0.8em}\mdseries (\exam@weight~#1)}}}
\newcommand{\choicelist}[1][\alph{exam@choice}]{%
  \list{\addtocounter{exam@choice}{1}\ding{111}%
    #1}%
  {\setcounter{exam@choice}{0}%
    \setlength{\itemsep}{0pt}\setlength{\parsep}{0pt}}}
\let \endchoicelist = \endlist
\let \choice = \item
\renewcommand{\l@section}[2]{%
  \addpenalty\@secpenalty
  \vspace{0.0em \@plus\p@}%
  \setlength\@tempdima{1.5em}%
  \begingroup
    \renewcommand{\@pnumwidth}{5em}
    \parindent = \z@ 
    \rightskip = \@pnumwidth
    \parfillskip = -\@pnumwidth
    \leavevmode \bfseries
    \advance\leftskip\@tempdima
    \hskip -\leftskip
    #1\nobreak\hfil
    \nobreak\hb@xt@\@pnumwidth{\hss \normalfont 
      \MakeLowercase{\exam@page} #2}\par
  \endgroup }
\AtBeginDocument{\def \contentsname{\exam@contents}}
\setcounter{tocdepth}{1}
\newcommand{\dato}[1]{\def \exam@date {#1}}
\newcommand{\emne}[2]{\def \exam@id {#1}\def \exam@title {#2}}
\newcommand{\hjelpemidler}[1]{\def \exam@aids{#1}}
\newcommand{\tid}[2]{\def \exam@timea{#1}\def \exam@timeb {#2}}
\newcommand{\vedlegg}[1]{\def \exam@encl{#1}}
\dato{??. ??. ????}  \emne{IN ???}{???}
\hjelpemidler{\exam@any}  \tid{}{}  \vedlegg{\exam@none}
\AtEndDocument{\label{::SLUTT::}}
\newcommand{\Nproblems}{\exam@get@number{\exam@ref{::SLUTT::}}}
\newcommand{\exam@get@number}[1]{%
  \setcounter{exam@temp}{0}%
  \setbox0=\hbox{\global\advance\c@exam@temp#1}%
  \arabic{exam@temp}}
\newcommand{\exam@ref}[1]{\@ifundefined{r@#1}{0}%
  {\expandafter\expandafter\expandafter \@car\csname r@#1\endcsname 
    \@nil}}
\newcommand{\Npages}{\exam@pageref{::SLUTT::}}
\newcommand{\exam@pageref}[1]{\@ifundefined{r@#1}{0}%
  {\expandafter\expandafter\expandafter \@cdr\csname r@#1\endcsname 
    \@nil}}
\newcommand{\exam@dash}{\mbox{--\hspace*{-0.25em}--}}
