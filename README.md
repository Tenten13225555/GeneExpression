# GeneExpression

## Overview

This R script provides a simulated example of how to perform basic gene expression data analysis. The primary aim is to demonstrate the pipeline from data normalization to statistical analysis and visualization.

## Dependencies

- R (>= 3.5)
- ggplot2
- pheatmap

To install the dependencies, run the following commands in your R console:

```R
install.packages("ggplot2")
install.packages("pheatmap")
```

## Features

1. **Data Simulation**: Simulates gene expression data for 10 genes across 5 samples.
2. **Normalization**: Performs Z-score normalization on the simulated data.
3. **Statistical Analysis**: Executes a basic t-test to find differentially expressed genes between two specific samples.
4. **Visualization**: Generates a heatmap to visualize gene expression across samples, and a bar chart for a specific gene ("Gene1").

## Usage

1. Download the R script to your local machine.
2. Open the script in your R environment.
3. Run the script.

## Output

1. The simulated gene expression matrix.
2. T-test p-values for differential expression between the first two samples.
3. A heatmap that visualizes the normalized gene expression levels.
4. A bar chart showing the expression level of a specific gene ("Gene1") across samples.

