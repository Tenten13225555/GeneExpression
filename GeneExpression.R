# Load required libraries
if(!requireNamespace("ggplot2", quietly = TRUE)) install.packages("ggplot2")
if(!requireNamespace("pheatmap", quietly = TRUE)) install.packages("pheatmap")

# Load the libraries
library(ggplot2)
library(pheatmap)

# Simulate a more complex dataset: multiple samples and genes
# Each row represents a gene, each column represents a sample
set.seed(123)
gene_matrix <- matrix(runif(50, 2, 10), nrow = 10)
rownames(gene_matrix) <- paste("Gene", 1:10, sep="")
colnames(gene_matrix) <- paste("Sample", 1:5, sep="")

# Show the simulated data
print("Simulated Gene Expression Data:")
print(gene_matrix)

# Normalize the data (Z-score normalization)
norm_matrix <- scale(gene_matrix, center = TRUE, scale = TRUE)

# Perform a basic t-test to find differentially expressed genes between Sample1 and Sample2
ttest_result <- rowttests(norm_matrix[,1:2])
print("T-test Results:")
print(ttest_result$p.value)

# Generate a heatmap for visualization
pheatmap(norm_matrix, annotation_col = data.frame(
  Condition = factor(rep(c("A", "B"), each = 2, len = ncol(norm_matrix))),
  levels = c("A", "B")
))

# Create a ggplot bar chart for a specific gene (Gene1) across different samples
gene1_data <- data.frame(
  Sample = colnames(gene_matrix),
  Expression_Level = gene_matrix[1,]
)

ggplot(data = gene1_data, aes(x = Sample, y = Expression_Level)) +
  geom_bar(stat = "identity") +
  ggtitle("Expression Level of Gene1 Across Samples") +
  xlab("Sample") +
  ylab("Expression Level")
 
