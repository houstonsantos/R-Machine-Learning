# Barras
spray = aggregate(. ~ spray, data = InsectSprays, sum)
spray 

barplot(spray$count, col = gray.colors(6), xlab = "Spray", ylab = "Total", names.arg = spray$spray)
box()
