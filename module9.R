plot(CanPop$year, CanPop$population, col="red", ylim=g_range, pch=18, cex=2, xlab="Year", ylab="Population (In Millions)")
g_range <- range(0,35)
title(main="Canadian Population", font.main=4)
lines(CanPop$year, CanPop$population, type="o", lty=5)

library(lattice)
xyplot(CanPop$population ~ CanPop$year, grid = TRUE, xlab="Year", ylab="Population (In Millions)", main="Canadian Population", cex=2.5,
       type = c("p", "r"), col.line="darkblue", lwd=4, pch=8)


library(ggplot2)
library(readxl)
CanPop1 <- read.xlsx("CanPop1.xlsx")
ggplot(CanPop1, aes(x=year, y=population))
geom_histogram(binwidth=10, fill="#69b3a2", color="#e9ecef")
ggtitle("Canadian Population")