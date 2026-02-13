# Exploration of Inflation Development

A Quarto Book exploring inflation development across countries, built for the World Bank Group's Department of Development Economics. The project investigates inflation distribution, trends from 2000 to 2024, the impact of global crises, and which economic and socio-economic indicators predict inflation rates.

**Authors:** Girardin Robin & Georgantopoulos Nikolaos

## Research Questions

- How is inflation distributed across countries and income classes?
- How has inflation developed from 2000 to 2024?
- How do global crises (2008, 2020) influence inflation?
- Which indicators can predict inflation rates?

## Key Findings

- Wealthier countries exhibit lower and more stable inflation.
- Broad money growth increases inflation; secondary education enrollment and foreign reserves reduce it.
- Global crises disproportionately affect high-income countries due to deeper economic integration.

## Repository Structure

The project is organized as a [Quarto Book](https://quarto.org/docs/books/) with three parts:

### Report

| File               | Description                                                        |
|--------------------|--------------------------------------------------------------------|
| `index.qmd`        | Preface, generative AI disclosure, and chapter of choice rationale |
| `intro.qmd`        | Introduction, research questions, and library/data loading         |
| `overview.qmd`     | Data overview, descriptive statistics, and missing values analysis |
| `exploration.qmd`  | Exploratory analysis, correlation heatmaps, statistical tests     |
| `pred.qmd`         | Fixed-effects panel models predicting inflation                   |
| `conclusion.qmd`   | Summary of findings and policy implications                       |
| `references.qmd`   | References and data sources                                       |

### Appendices

| File            | Description                                           |
|-----------------|-------------------------------------------------------|
| `appendix.qmd`  | Indicator descriptions (A1) and income class thresholds (A2) |

### Code (Data Pipeline)

| File                | Description                                              |
|---------------------|----------------------------------------------------------|
| `data_creation.qmd` | Fetches raw data from the World Bank API via the `WDI` R package |
| `data_joining.qmd`  | Joins economic, socio-economic, and income classification datasets |
| `data_cleaning.qmd` | Handles missing values, drops collinear variables, prepares final dataset |

### Data

| Directory          | Contents                                                     |
|--------------------|--------------------------------------------------------------|
| `data/raw/`        | Raw datasets (`main.rds`, `comp.rds`, income classification CSVs) |
| `data/processed/`  | Intermediate joined/labeled data (`join_labeled.rds`, `join.rds`) |
| `data/final/`      | Cleaned dataset ready for modeling (`join_clean.rds`)        |

### Other Files

| File              | Description                    |
|-------------------|--------------------------------|
| `_quarto.yml`     | Quarto Book configuration      |
| `references.bib`  | BibTeX bibliography            |
| `_book/`          | Rendered HTML output           |

## Data Sources

- **Economic & socio-economic indicators:** [World Bank Open Data](https://data.worldbank.org/indicator), accessed via the [`WDI`](https://cran.r-project.org/web/packages/WDI/WDI.pdf) R package
- **Income classification:** [World Bank Country and Lending Groups](https://datahelpdesk.worldbank.org/knowledgebase/articles/906519-world-bank-country-and-lending-groups)

## Replication

### Prerequisites

- **R** (>= 4.0)
- **Quarto** (>= 1.0)
- The following R packages:

```r
install.packages(c(
  "WDI", "DT", "dplyr", "tidyr", "ggplot2", "plotly",
  "patchwork", "rstatix", "GGally", "ggcorrplot",
  "fixest", "here", "psych", "readr", "knitr"
))
```

### Steps

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd inflation-developement
   ```

2. **Fetch the data** by running the code chunks in `data_creation.qmd` (requires internet access to call the World Bank API). This populates `data/raw/`.

3. **Build the data pipeline** by running `data_joining.qmd` then `data_cleaning.qmd` in order. This produces the processed and final datasets.

4. **Render the book:**
   ```bash
   quarto render
   ```
   The rendered HTML output will be available in `_book/`.
