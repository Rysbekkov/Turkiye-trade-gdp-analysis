# turkiye-trade-gdp-analysis

## Project Structure

```text
README.md           # Project overview and instructions
Dataset.QM.dta      # World Bank economic data (2000–2023)
Dataset.do          # Stata analysis script
```

## Prerequisites

- Stata 18 (or a compatible version) with an active license.

**Required packages:** None. The analysis uses built-in Stata commands.

## How to Run

1. Open Stata.
2. Set the working directory to the location of the downloaded files.
3. Execute the Stata script:

```stata
cd "/path/to/your/files"
do "Dataset.do"
```

The script loads `Dataset.QM.dta`, produces a histogram and scatterplot with a fitted line, and runs descriptive statistics, correlation, and simple linear regression.

## Project Overview

This analysis examines the relationship between **trade openness** and **GDP in Türkiye** from **2000 to 2023**, using 24 annual observations from the World Bank. Trade openness is measured as exports plus imports of goods and services as a percentage of GDP.

**Research question:** Is greater trade openness associated with a higher level of GDP in Türkiye?

## Data and Methods

The dataset includes year, nominal GDP (trillion current USD), trade (% of GDP), inflation rate (%), and exchange rate (TRY per USD). The analysis uses descriptive statistics, a histogram, a scatterplot with a fitted regression line, Pearson correlation, and ordinary least squares (OLS) regression of GDP on trade openness. Inflation and exchange rate variables are included in the dataset but are not predictors in the regression.

## Key Findings

- **GDP:** Nominal GDP increased from approximately $0.27 trillion in 2000 to $1.12 trillion in 2023.
- **Exchange rate:** The exchange rate increased from 0.63 to 23.74 TRY per USD, reflecting substantial depreciation of the Turkish lira.
- **Inflation:** Annual inflation was 54.92% in 2000 and 53.86% in 2023, illustrating persistent price pressures.
- **Trade openness:** Trade as a share of GDP rose from 42.35% to 66.28%.
- **Pearson correlation:** `r = 0.5358`, indicating a positive association between trade openness and GDP.
- **Linear regression:** Trade openness coefficient = `0.01454` trillion USD per percentage point (`p = 0.007`); `R² = 0.2871`.

These results describe an association between trade openness and **nominal GDP levels**, not a causal effect on real GDP growth.

## Data Source

1. **Trade as % of GDP:** [World Bank Trade Indicator](https://data.worldbank.org/indicator/NE.TRD.GNFS.ZS)
2. **GDP in USD:** [World Bank GDP Indicator](https://data.worldbank.org/indicator/NY.GDP.MKTP.CD?locations=TR)
3. **Exchange Rate (TRY/USD):** [World Bank Exchange Rate Indicator](https://data.worldbank.org/indicator/PA.NUS.FCRF?locations=TR)
4. **Inflation Rate:** [World Bank Inflation Indicator](https://data.worldbank.org/indicator/FP.CPI.TOTL.ZG?locations=TR)
