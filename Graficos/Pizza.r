# Pizza
pie(spray$count, labels = spray$spray, main = "Spray", col = c(1:6))
pie(spray$count, labels = NA,  main = "Spray", col = c(1:6))
legend("bottomright", legend = spray$spray, cex = 1, fill = c(1:6))
