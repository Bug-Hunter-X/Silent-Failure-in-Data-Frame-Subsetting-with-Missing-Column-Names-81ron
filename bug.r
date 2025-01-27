```r
# This code attempts to subset a data frame using a character vector of column names,
# but it fails silently if any of the specified column names are not found.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D")
result <- df[, cols]
print(result)
```