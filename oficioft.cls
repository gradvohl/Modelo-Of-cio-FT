\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oficioft}[2019/01/03 Oficio padrao FT, gradvohl@ft.unicamp.br]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
\ProcessOptions
\LoadClass{letter}

\RequirePackage{libertine}
\RequirePackage{fontawesome}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[portuguese]{babel}

\lhead{\includegraphics{Figures/logoUnicamp.png}} 
\chead{\large\sc{Universidade Estadual de Campinas}\\
    \sc{Faculdade de Tecnologia} \vspace{.3cm}
}

\rhead{\includegraphics[scale=.22]{Figures/logoFT.png}} 

\lfoot{\scriptsize {\sc Faculdade de Tecnologia} \\
    R. Paschoal Marmo, 1888 -- Jardim Nova Itália\\
    CEP 13484-332 Limeira,SP -- Brazil
} 
\cfoot{} \rfoot{\scriptsize \faPhone \ (19) 2113-3343 \\
                \faMobile \ (19) 9-9735-2744 \\
                \href{mailto:gradvohl@ft.unicamp.br}{gradvohl@ft.unicamp.br}\hspace{-.25em}
}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}

\renewcommand{\opening}[1]{\ifx\@empty\fromaddress
    \pagestyle{fancy}
    {\raggedleft \@date\par}%
  \else  % home address
    \thispagestyle{empty}%
    {\raggedleft\begin{tabular}{l@{}}\ignorespaces
      \fromaddress \\*[2\parskip]%
      \@date \end{tabular}\par}%
  \fi
  %\vspace{2\parskip}%
  {\raggedright \toname \\ \toaddress \par}%
  \vspace{2\parskip}%
  #1\par\nobreak}
  
  
\renewcommand{\closing}[1]{#1\par\nobreak\vspace{\parskip}%
    \stopbreaks
    \noindent
    \ifx\@empty\fromaddress\else
\hspace*{\longindentation}\fi
\parbox{\textwidth}{\centering
        %\ignorespaces \\[6\medskipamount]%
        \ifx\@empty\fromsig
        \fromname
        \else \fromsig \fi\strut}%
\par}
  
\headsep 3mm

\setlength{\headheight}{20.55mm}
\setlength{\parindent}{0mm}
\setlength{\parskip}{5mm}
\setlength{\voffset}{-1in}
\setlength{\hoffset}{-1in}
\setlength{\textwidth}{165mm}
\setlength{\textheight}{235mm}
\setlength{\oddsidemargin}{25mm}
\setlength{\topmargin}{10mm}
