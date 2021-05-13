
* Lear archivo csv
import delimited "/Users/adrian_martinez/Dropbox/Maestría/Maestría Clases/Segundo_Semestre/econometria/tarea_2_econometria/pums80.csv", clear

gen twoboys = (boy1st == 1 & boy2nd == 1)
gen twogirls = (boy1st == 0 & boy2nd == 0)

ivregress gmm weeksm1 agem1 agefstm black hispan othrace ///
	(kidcount = twoboys twogirls multi2nd)
	

ivregress gmm weeksm1 agem1 agefstm black hispan othrace ///
	(kidcount = samesex multi2nd)
	
ivregress gmm weeksm1 agem1 agefstm black hispan othrace ///
	(kidcount = samesex multi2nd), wmatrix(unadjusted)

* prueba
