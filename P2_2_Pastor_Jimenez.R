diabetes <- read.table("diabetes.data", header = T, na.strings = c("-9999.0"))
diabetes <- na.omit(diabetes)

# 1. Hay 10 variables numéricas y un factor
str(diabetes)

# Índice de las variables numéricas
idx_num <- sapply(diabetes, is.numeric)

# 2.
summary(diabetes)

# La varianza solo tiene sentido para las variables numéricas
var(diabetes[idx_num])

# 3.
boxplot(diabetes[idx_num])

# 4. 
sapply(diabetes[idx_num], tapply, diabetes$SEX, mean)

# 5. Ignoramos SEX por factor e Y porque la cor es 1
cor_y <- cor(diabetes$Y, diabetes[, !names(diabetes) %in% c("SEX", "Y")])

# 6.De los nombres de las variables escogemos las de mayor y menor valor absoluto
vars <- colnames(cor_y)[match(range(abs(cor_y)), cor_y)]
par(mfcol=c(1,2))
for (var in vars) plot(diabetes[, var], diabetes$Y, xlab=var, ylab="Y", pch=20)

# 7.
diabetes$SEX <- as.numeric(diabetes$SEX)

# 8.
is_outlier <- function(x, const=3) {
  x < median(x) - const*mad(x) | x > median(x) + const*mad(x)
}

mask <- sapply(diabetes[idx_num], is_outlier)
outliers <- apply(mask, 1, any)
diabetes <- diabetes[!outliers, ]


# 9.
idx <- sample(nrow(diabetes), 0.7*nrow(diabetes))
d_big <- diabetes[idx, ]
d_small <- diabetes[-idx, ]

# 10.
mean_d <- lapply(d_big, mean)
sd_d   <- lapply(d_big, sd)

d_big_std   <- (d_big - mean_d) / sd_d
d_small_std <- (d_small - mean_d) / sd_d

