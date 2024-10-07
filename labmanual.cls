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

\def\fileversion{1.0}
\def\filedate{2024/10/06}

\NeedsTeXFormat{LaTeX2e}
\providesClass{labmanual}[\filedate\space Version \fileversion\space by Madison Gleydura]

\RequrePackage{ifthen}

\LoadClass[10pt,letterpaper]{article}