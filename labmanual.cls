% labmanual.cls
%
% A LaTeX document class for creating physics lab manuals
%
%% labmanual.cls
%% Copyright (C) 2024 Madison Gleydura
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   https://www.latex-project.org/lppl.txt
% and version 1.3c or later is part of all distributions of LaTeX
% version 2008 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Madison Gleydura.
%
% This work consists of the files labmanual.cls and labmanual.tex.
%
% The user's guide for labmanual.cls is in the file labmanual.tex.

%%% Madison Gleydura
%%% Department of Physical Sciences
%%% Embry-Riddle Aeronautical University
%%% Daytona Beach, FL 32114
%%% gleydura@my.erau.edu

\def\fileversion{1.1}
\def\filedate{2024/10/28}

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{labmanual}[\filedate\space Version \fileversion\space by Madison Gleydura]
\LoadClass[12pt,letterpaper]{article}

% Required Packages
\RequirePackage{amsmath}
\usepackage[yyyymmdd]{datetime}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

%-------------------------------------------------------------------------------

%                                **************                                
%                                ** COMMANDS **
%                                **************

\newcommand{\@university}{Embry-Riddle Aeronautical University}
\newcommand{\@department}{Physcial Sciences}
\newcommand{\@coursetitle}{PS228L - Physics Laboratory III}
\newcommand{\@experimenttitle}{DC Circuits}
\newcommand{\@experimentsubtitle}{Applications}
\renewcommand{\dateseparator}{--}

\newcommand{\university}[1]{\renewcommand{\@university}{#1}}
\newcommand{\department}[1]{\renewcommand{\@department}{#1}}
\newcommand{\coursetitle}[1]{\renewcommand{\@coursetitle}{#1}}
\newcommand{\experimenttitle}[1]{\renewcommand{\@experimenttitle}{#1}}
\newcommand{\experimentsubtitle}[1]{\renewcommand{\@experimentsubtitle}{#1}}

%-------------------------------------------------------------------------------

%                               *****************
%                               ** PAGE LAYOUT **
%                               *****************

\setlength{\textwidth}{\paperwidth}
\addtolength{\textwidth}{-2in}
\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}

\setlength{\headheight}{15pt}
\setlength{\headsep}{15pt}
\setlength{\topmargin}{0in}
\addtolength{\topmargin}{-\headheight}
\addtolength{\topmargin}{-\headsep}
\setlength{\footskip}{29pt}
\setlength{\textheight}{\paperheight}
\addtolength{\textheight}{-2.2in}

\setlength{\marginparwidth}{.5in}
\setlength{\marginparsep}{5pt}

\setlength{\parindent}{0pt}
\setlength{\parskip}{\baselineskip}

%-------------------------------------------------------------------------------

%                             *********************
%                             ** FANCYHDR CONFIG **
%                             *********************

% Apply header on the title page
\fancypagestyle{firststyle}{
  \fancyhf{}
  \fancyfoot[L]{\\\@university} % Left-aligned text below the line
  \fancyfoot[R]{\\Page \textbf{\thepage} of \textbf{\pageref*{LastPage}}} % Right-aligned text below the line
  \renewcommand{\headrulewidth}{1pt} % Set header line width
  \renewcommand{\footrulewidth}{1.5pt} % Set footer line width
}

\fancypagestyle{mainstyle}{
    \fancyhf{} % Clear all headers and footers
    \fancyhead[L,C]{}
    \fancyhead[L]{\@experimenttitle}
    \fancyfoot[L]{\\\@university} % Left-aligned text below the line
    \fancyfoot[R]{\\Page \textbf{\thepage} of \textbf{\pageref*{LastPage}}} % Right-aligned text below the line
    \renewcommand{\headrulewidth}{1pt} % Set header line width
    \renewcommand{\footrulewidth}{1.5pt} % Set footer line width
}

%-------------------------------------------------------------------------------

%                              *******************                              
%                              ** TITLE SECTION **
%                              *******************

\AtBeginDocument{
    \pagestyle{mainstyle}
    \thispagestyle{firststyle}
    \begin{center}\vspace*{0.125in}
        \Large\textbf{\@experimenttitle} \\
        \large\textbf{\@experimentsubtitle} \\ \vspace*{0.25in}
        \normalsize\@coursetitle \\
        \textit{\@university} \\
        \text{Department of \@department} \\ \vspace*{0.25in}
        \@date{}
    \end{center}
}

%-------------------------------------------------------------------------------

%                              ******************                               
%                              ** ENVIRONMENTS **
%                              ******************

\newenvironment{background}
    {\begin{quote} \setlength{\leftskip}{0.25in} \setlength{\rightskip}{0.25in}}
    {\end{quote}}

\newenvironment{equipment}
    {\begin{flushleft} \Large\textbf{Equipment} \begin{itemize}\normalsize}
    {\end{itemize}\end{flushleft}}