```r
# This improved code uses the `intersect()` function to ensure that only existing
# column names are used for subsetting, and it includes explicit error handling.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D")

# Use intersect to find common columns
cols_to_use <- intersect(cols, names(df))

# Check if any columns were missing
if (length(cols_to_use) < length(cols)) {
  missing_cols <- setdiff(cols, cols_to_use)
  stop(paste("Error: Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
}

result <- df[, cols_to_use]
print(result)
```