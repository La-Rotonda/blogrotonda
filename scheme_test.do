********************************************************************************
** 	TITLE: scheme_test.do
**
**	PURPOSE: Test the personalized blogrotonda scheme for articles and academic
**			 products of La Rotonda Blog
**				
**	AUTHOR: Ronny M. Condor (ronny.condor@unmsm.edu.pe)
**
**	CREATED: 2021-10-04
********************************************************************************

global graphs "C:\Users\\`c(username)'\Documents\GitHub\blogrotonda\graphs"

* Read the data
use "https://github.com/La-Rotonda/blogrotonda/blob/main/scheme_test.dta?raw=true", clear

* Set blogrotonda scheme

set scheme blogrotonda, perm

*** Scatter plot
twoway (scatter var2 var5), title("Scatter plot") note("Elaboration: @BlogRotonda")
graph export "${graphs}\scatter_plot.png", as(png) name("Graph") replace


*** Line graph
twoway ///
	(line var2 date if group==1)  ///
	(line var2 date if group==2)  ///
	(line var2 date if group==3)  ///
	(line var2 date if group==4)  ///
	(line var2 date if group==5), ///
		legend(order(1 "group1" 2 "group2" 3 "group3"  4 "group4"  5 "group5")) ///
		title("Line plot") ///
		note("Elaboration: @BlogRotonda")
graph export "${graphs}\line_graph.png", as(png) name("Graph") replace
		
*** Pie chart
graph pie var1 if group <= 5, ///
	over(group) plabel(_all percent, format(%9.1f)) ///
	title("Pie plot") note("Elaboration: @BlogRotonda")
graph export "${graphs}\pie_chart.png", as(png) name("Graph") replace
	
*** Box plot
graph box var1 - var5 , ///
		title("Box plot") ///
		note("Elaboration: @BlogRotonda")
graph export "${graphs}\box_plot.png", as(png) name("Graph") replace
		
*** Histogram
histogram var3, percent title("Histogram") note("Elaboration: @BlogRotonda")
graph export "${graphs}\histogram.png", as(png) name("Graph") replace

	
*** Horizontal bar graph
graph hbar var1 - var5, ///
		blabel(bar, format(%9.2f)) ylabel(0(100)1000) ///
		title("Bar graph") ///
		note("Elaboration: @BlogRotonda") name(graph5, replace)
graph export "${graphs}\hbar.png", as(png) name("Graph") replace

		
*** Density plot

twoway ///
	(area den1d den1x, fcolor(%50)) ///
	(area gen2d gen2x, fcolor(%50)) ///
	(area gen3d gen3x, fcolor(%50)), ///
			title("Density plots") note("Elaboration: @BlogRotonda")
graph export "${graphs}\density.png", as(png) name("Graph") replace


*** Range graphs	
	
twoway ///
	(rcapsym var2 var3 date if group==1, sort) ///
	(rcapsym var2 var3 date if group==2, sort), ///
		title("Range plots") note("Elaboration: @BlogRotonda")
graph export "${graphs}\range_graphs.png", as(png) name("Graph") replace

		
*** By graphs
		
graph box var1 ///
		if group <= 2, ///
		by(group, title("By graphs") note("Elaboration: @BlogRotonda"))
graph export "${graphs}\bygraphs.png", as(png) name("Graph") replace
	