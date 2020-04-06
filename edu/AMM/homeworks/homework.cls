% Filename: homework.cls
% Author: Andriy Zhugayevych  azh@ukr.net
% Options:

\NeedsTeXFormat{LaTeX2e}[1994/12/01]
\ProvidesClass{homework}[2019/10/27 Article class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[11pt,a4paper]{article}

\DeclareOption*{}
\DeclareOption{a4paper}{    \setlength{\textwidth}{185mm}\setlength{\textheight}{260mm}}
\DeclareOption{letterpaper}{\setlength{\textwidth}{190mm}\setlength{\textheight}{240mm}}
\ExecuteOptions{a4paper} % default paper size
\ProcessOptions\relax

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage[pdfpagemode=UseNone,pdfstartview={}]{hyperref}
\RequirePackage{xcolor}


% Page layout
\setlength{\topmargin}{-20mm}
\setlength{\oddsidemargin}{-10mm}
\setlength{\evensidemargin}{-10mm}


% Make title
\renewcommand{\maketitle}{
\thispagestyle{empty}
\noindent
\begin{center}
{\large\bfseries Advanced Materials Modeling \par}
\vskip 0.5ex
{\large\bfseries \@title \par}
\end{center}
%\raggedright
\textit{\small\textbf{Notes}: In multiple choice problems explain your answer. Add references if needed. Upload solution as a single file ``YourName.pdf'' or ``YourName.zip''.}
\vskip 2ex}


% Sections
\renewcommand{\section}{\@startsection{section}{1}{\z@}%
  {3ex \@plus 1ex \@minus .2ex}{.5ex \@plus.2ex}{\normalfont\large\bfseries\color{blue!50!gray}}}


% Enumerate tasks
\newcounter{task}
\renewcommand{\thetask}{\arabic{task}}
\newenvironment{task}[1][]
  {\par\nobreak\vfil\penalty0\vfilneg\vtop\bgroup
   \refstepcounter{task}\smallskip\noindent\textbf{\thetask. #1}}
  {\medskip\par\xdef\tpd{\the\prevdepth}\egroup\prevdepth=\tpd}


% Solutions
\newcommand{\sol}[1]{\par\smallskip\noindent\textbf{\color{green!50!gray} Solution:} #1}
%\renewcommand{\sol}[1]{} % hide solutions


% Mathematical symbols
\newcommand{\dif}{\,\mathrm{d}}
\newcommand{\conj}[1]{\overline{#1}}
\renewcommand{\vec}{\bm}
\newcommand{\mat}{\mathbf}
\newcommand{\op}{\mathsf}
\newcommand{\rme}{\mathrm{e}}
\newcommand{\rmi}{\mathrm{i}}
