{smcl}
{* 2021-08-15 Ronny M. Condor}{...}
{title:Title}

{p2colset 5 16 16 1}{...}
{p2col:{cmd:blogrotonda} {hline 2}}Graphics scheme from La Rotonda Blog
that implements best data visualization practices. {p_end}
{p2colreset}{...}

{title:Overview}

{pstd}
{cmd:blogrotonda} changes the default scheme of Stata graphics. The choices of colors, markers, gridlines, and other aspects of the figure 
follow best data visualization practices.

{pstd}
Many of the features of ipaplots are adapted from colorscheme cleanplots
{browse "https://www.trentonmize.com/software/cleanplots": which you can read about here}.

{title:Using blogrotonda}

{pstd}
To change your graphics scheme to {cmd:blogrotonda} use the command: 

{phang2} {stata set scheme blogrotonda, perm: set scheme blogrotonda, perm}

{pstd}
Stata's default graphic scheme is {cmd:s2color}. To change back to the default: 

{phang2} {stata set scheme s2color, perm: set scheme s2color, perm}

{title:Authorship}

{pstd} {cmd:blogrotonda} is written by Ismael Canales and Ronny M. Condor from La Rotonda Blog. {p_end}

