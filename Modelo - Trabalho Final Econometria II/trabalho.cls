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
\ProvidesClass{trabalho}[09/04/2019 1.0 -- Gustavo Vital]

\DeclareOption{final}{\@finaltrue}

\ExecuteOptions{} % default
\ProcessOptions\relax
\LoadClass[11pt, a4paper, twosides, onehalfspacing]{article}

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
\RequirePackage{tikz}
\RequirePackage{ctable}
\RequirePackage[alf]{abntex2cite}
\RequirePackage{lipsum}
\RequirePackage{enumitem}
\RequirePackage{helvet}
\RequirePackage{times}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{ctable}
\RequirePackage{listings}

%\RequirePackage[light,math]{iwona}
%\RequirePackage[light,math]{kurier}

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
\fancyhead[LE,RO]{Universidade Federal Fluminense - Faculdade de Economia - Econometria I}
\fancyfoot[RE,RO]{\thepage}
\renewcommand{\headrulewidth}{0.1pt}
\renewcommand{\footrulewidth}{0.1pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                 DEFININDO NOVAS MACROS                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
\def\numero#1{\gdef\@numero{#1}}
\def\@numero{\@latex@warning@no@line{no \noexpand\numero given}}
\makeatother


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                 REDEFININDO O MAKETITLE                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
\def\@maketitle{

    \noindent
    \rule{\textwidth}{1pt} \\[1.5ex]
    \noindent
    \Large \textbf{Trabalho Final de Econometria I} \\[.5ex]
    \large \@title \\[.5ex]
    \textit{\textbf{\@author  }- \@date } \\[.5ex]
    \rule{\textwidth}{1.5pt}
    \onehalfspacing
}
\makeatother

\newcommand{\cabecalho}{
    \clearpage\maketitle
    \thispagestyle{empty}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
