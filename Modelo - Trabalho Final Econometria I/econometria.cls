%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Autor: Gustavo Vital
%   Versão: 1.0
%   Email: gustavovital@id.uff.br
%   Descrição da classe: Classe criada com o objetivo de  
%   auxiliar/padronizar o uso do LaTeX como ferramenta na 
%   produção de documentos acadêmicos nas matérias de 
%   Métodos Quantitativos da Faculdade de Economia - UFF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{econometria}[09/04/2019 1.0 -- Gustavo Vital]

\DeclareOption{final}{\@finaltrue}

\ExecuteOptions{} % default
\ProcessOptions\relax
\LoadClass[12pt, a4paper, onehalfspacing]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   PACOTES UTILIZADOS                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english,brazil]{babel}
\RequirePackage[a4paper,left=3cm,right=2cm,top=3cm,bottom=2cm]{geometry}
\RequirePackage[font=small,labelsep=endash,labelfont=bf]{caption}
\RequirePackage{graphicx}
\RequirePackage{titling}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{appendix}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{ctable}
\RequirePackage[alf]{abntex2cite}
\RequirePackage{lipsum}
\RequirePackage{enumitem}
\RequirePackage{helvet}
\RequirePackage{times}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{ctable}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     FORMATAÇÕES BÁSICAS                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\setlength{\parskip}{0.8ex} 
\titleformat{\section}{\bfseries\Large}{\thesection}{2\wordsep}{}
\titleformat{\subsection}{\bfseries\large}{\thesubsection}{2\wordsep}{}
\DeclareMathOperator{\sen}{sen}
\input{fleqn.clo}
\setlength{\mathindent}{\parindent}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     NOVOS ENVIRONMENTS                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{citacao}{
    \list{}
    \small
    \addtolength{\leftskip}{4cm}
    \item\relax 
}{
    \endlist
}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               DEFININDO O HEADER E RODAPÉ             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{Universidade Federal Fluminense - Faculdade de Economia}
\fancyfoot[RE,RO]{\thepage}
\renewcommand{\headrulewidth}{0.1pt}
\renewcommand{\footrulewidth}{0.1pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                 DEFININDO NOVAS MACROS                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
\def\disciplina#1{\gdef\@disciplina{#1}}
\def\@disciplina{\@latex@warning@no@line{no \noexpand\disciplina given}}
\makeatother


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                 REDEFININDO O MAKETITLE                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
\def\@maketitle{
    \thispagestyle{empty} \noindent
    \rule[-5pt]{\textwidth}{1.5pt} 
    \par\vspace{.2cm}\noindent
    \hspace{-.7cm}
    \raisebox{5.cm}{
        \includegraphics[width=5.84cm]{logo_uff_brasao.eps}}
    \hspace{2cm}
    \raisebox{5cm}{
        \includegraphics[width=8.8cm]{economia_circle.eps}}
    \par\vspace{-5.5cm}\par
    \par\noindent\rule[-3pt]{\textwidth}{2.5pt} 
    \par\vspace*{0cm}\noindent
    \begin{center}
        \LARGE \textbf{\@title} \\[1ex]
        \large \textit{\@author} \\[.5ex]
        \large \textit{\@disciplina} \\[.5ex]
        \large \textit{\@date} \\[.5ex]
    \end{center}
    \onehalfspacing
}
\makeatother

\newcommand{\cabecalho}{
    \clearpage\maketitle
    \thispagestyle{empty}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%