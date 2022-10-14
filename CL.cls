\ProvidesClass{cv}
\LoadClass[11pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	PACKAGES AND PREAMBLE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage[margin=1in, tmargin=1.7in, headsep=1in]{geometry} % Set margins to 1 inch (standard for word docs)
\usepackage{datetime} % Set revised date to specific format
\usepackage{fancyhdr} % Allow fancy headers, footers, page numbers
\usepackage{hyperref} % Allow links
\usepackage{helvet} % Use helvetica font
\usepackage{graphicx} % Allow images
\usepackage{lipsum}  % Create dummy text

%----------------------------------------------------------------------------------------
%	Page numbers and headers
%----------------------------------------------------------------------------------------

% Allow fancy header and footer
\pagestyle{fancy}
\fancyhf{}

% Remove header decorative line
\renewcommand{\headrulewidth}{0pt}

% Create a custom header with contact information on the top right
\newcommand{\myheader}[1]{
    \fancyhead[R]{#1}
}

% Add Fred Hutch logo. Adjust the \vspace argument to move the logo up and down if necessary
% to match the contact information on the right of the header
\fancyhead[L]{%
	\includegraphics[width=2.5in]{fh} 
	\vspace{0.35in}
}

% Use this format for today's date
\mdyyyydate

% FHCC address footer on every page
\fancyfoot[C]{
	{\scriptsize
	\textbf{Fred Hutchinson Cancer Center} $|$ 1100 Fairview Ave. N. $|$ 
	Seattle, WA 98109 $|$ 206.667.5000 $|$ \textbf{FredHutch.org}
	}
}

% Include page numbers on bottom right
\fancyfoot[R]{
	\scriptsize
	\thepage
}

%----------------------------------------------------------------------------------------
%	Paragraph formatting
%----------------------------------------------------------------------------------------

% Use helvetica instead of default LaTeX font
\renewcommand{\familydefault}{\sfdefault}

% No indent of additional "paragraphs"
\setlength\parindent{0pt}

% Set line spacing
\setlength{\parskip}{1.25em}

% Formatting of links	
\hypersetup{
    colorlinks=true,    
    urlcolor=blue,
    breaklinks=true
}

\urlstyle{same}

% Create a signature from file
\newcommand{\signature}{%
	\includegraphics[width=1in]{signature} 
}

%----------------------------------------------------------------------------------------
%	Helpful functions
%----------------------------------------------------------------------------------------

% Add email with link
\newcommand{\emailcontact}[1]{%
	\href{mailto:#1}{#1}
}

% Add email without link
\newcommand{\emailplain}[1]{%
	\textbf{#1}
}

% Add DOI with link
\newcommand{\doi}[1]{%
	DOI: \href{https://doi.org/#1}{#1}
}