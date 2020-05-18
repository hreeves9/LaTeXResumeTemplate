\ProvidesClass{hreeves_resume}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

% Packages
\usepackage[a4paper, margin=0in]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage{fontspec,xltxtra,xunicode,xparse,xcolor}

% Set fonts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	RECOMMENDED to use Light font for the main font, Regular for bold
%	(helps with readability)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setmainfont{Lato-Light.ttf}
  [Path = Fonts/,
  Ligatures=TeX,
  BoldFont=Lato-Regular.ttf,
  ItalicFont=Lato-LightItalic.ttf]

% Half inch margins
\setlength{\textwidth}{7.5in}
\setlength{\voffset}{0.5in}
\setlength{\hoffset}{0.5in}
\setlength{\oddsidemargin}{-1.21in}

% Name heading command
\newcommand{\namesection}[3]{
	\begin{minipage}{.45\linewidth}
    \begin{flushleft}
      \fontspec[Path = ./Fonts/]{Rockwell.ttc}\fontsize{36pt}{36pt}\selectfont #1
      \fontspec[Path = ./Fonts/]{Rockwell.ttc}\fontsize{36pt}{36pt}\selectfont #2
    \end{flushleft}
  \end{minipage}
  \hfill
  \begin{minipage}{.45\linewidth}
    \begin{flushright}
      \fontspec{[Lato-Regular.ttf]}\fontsize{12pt}{15pt}\selectfont #3
    \end{flushright} 
  \end{minipage}
  \vspace{20pt}
}

% Headings command
\titleformat{\section}{\scshape\fontspec{[Lato-Bold.ttf]}\fontsize{16pt}{16pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subsection command
\titleformat{\subsection}{\fontspec{[Lato-Regular.ttf]}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

% Subsection with no new line (used with jobs command)
\newcommand{\runsubsection}[1]{\fontspec{[Lato-Regular.ttf]}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1}}
\titlespacing{\runsubsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}


% Descriptions command
\newcommand{\descript}[1]{\raggedright\scshape\fontspec{[Lato-Light.ttf]}\fontsize{12pt}{15pt}\selectfont {#1 \\} \normalfont}

% Dates command
\newcommand{\dateInfo}[1]{\raggedright\scshape\fontspec{[Lato-LightItalic.ttf]}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Information separators command
\newcommand{\infosep}[0]{\vspace{4pt}}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{16pt}}

% Education item command
\newcommand{\educationsection}[3]{
	\runsubsection{#1}
	
	\fontspec{[Lato-Regular.ttf]}\fontsize{10pt}{12pt}\selectfont #2

	\dateInfo{#3}

	\sectionsep
}

% Smaller Description command
\newcommand{\smallerdescript}[1]{
	\fontspec{[Lato-Light.ttf]}\fontsize{10pt}{12pt}\selectfont #1
}

% Course command
\newcommand{\course}[2]{
	\textbf{#1} - #2\\
}

% Bullet Lists with fewer gaps command
\newenvironment{smallItemize}{\vspace{-\topsep}\fontsize{9pt}{10pt}\selectfont\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

% Job Command
\newcommand{\job}[3]{
	\runsubsection{#1,}
	\descript{#2}
	
	\dateInfo{#3}
}

% Project Command
\newcommand{\project}[3]{
	\subsection{#1}
	\dateInfo{#2, #3}
}