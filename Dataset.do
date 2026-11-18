* The Relationship Between Trade Openness and GDP in Türkiye (2000–2023)
* Quantitative Methods | Atabek Rysbekov
*
* Run this file from the folder containing Dataset.QM.dta.

* Load the dataset used in the analysis.
use "Dataset.QM.dta", clear

* Descriptive statistics: GDP and trade as a percentage of GDP.
summarize GDP_trillion TradeofGDP

* Histogram of trade openness.
histogram TradeofGDP, width(2) frequency ///
    title("Histogram of Trade-to-GDP Ratio") ///
    xtitle("Trade (% of GDP)") ytitle("Frequency")

* Scatterplot of GDP and trade openness with fitted regression line.
twoway (scatter GDP_trillion TradeofGDP, mcolor(blue)) ///
       (lfit GDP_trillion TradeofGDP, lcolor(red)), ///
       title("GDP vs Trade Openness") ///
       ytitle("GDP (Trillion USD)") ///
       xtitle("Trade (% of GDP)")

* Pearson correlation between GDP and trade openness.
correlate GDP_trillion TradeofGDP

* Simple linear regression: GDP level on trade openness.
regress GDP_trillion TradeofGDP
