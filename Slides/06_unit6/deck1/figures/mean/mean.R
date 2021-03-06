library(openintro)

set.seed(13225)
x = rnorm(50)
y = rnorm(50)
y2 = 2*x + 1 + rnorm(50)
y3 = -2.4*x + 2 + rnorm(50, 0, 2)
cor(x,y)
plot(x,y)

pdf("mean.pdf", width = 7.5, height = 2.5)
par(mar = c(4,4,1,1), mfrow = c(1,3))
# plot 1
plot(y ~ x, col = COL[1,2], pch = 19)
abline(lm(y~x), lty = 1, col = COL[4])
lines(x = c(-1,-1), y = c(-2,mean(y)), lty = 2)
points(x = -1, y = mean(y), pch = 1, col = COL[4], cex = 2)
points(x = -1, y = mean(y), pch = 19, col = COL[4], cex = 0.9)
lines(x = c(1.3,1.3), y = c(-2,mean(y)), lty = 2)
points(x = 1.3, y = mean(y), pch = 1, col = COL[4], cex = 2)
points(x = 1.3, y = mean(y), pch = 19, col = COL[4], cex = 0.9)
lines(x = c(mean(x),mean(x)), y = c(-2,mean(y)), lty = 2)
points(x = mean(x), y = mean(y), pch = 1, col = COL[4], cex = 2)
points(x = mean(x), y = mean(y), pch = 19, col = COL[4], cex = 0.9)
text(x = mean(x)+0.2, y = mean(y)+0.01, expression(paste("(", bar(x), ", " , bar(y), ")")), pos = 3, col = COL[4])
# plot 2
plot(y2 ~ x, col = COL[1,2], pch = 19)
abline(lm(y2~x), lty = 1, col = COL[2])
lines(x = c(mean(x),mean(x)), y = c(-4,mean(y2)), lty = 2)
points(x = mean(x), y = mean(y2), pch = 1, col = COL[2], cex = 2)
points(x = mean(x), y = mean(y2), pch = 19, col = COL[2], cex = 0.9)
text(x = mean(x)-0.2, y = mean(y2)-0.2, expression(paste("(", bar(x), ", " , bar(y), ")")), pos = 3, col = COL[2])
# plot 3
plot(y3 ~ x, col = COL[1,2], pch = 19)
abline(lm(y3~x), lty = 1, col = COL[3], lwd = 2)
lines(x = c(mean(x),mean(x)), y = c(-3,mean(y3)), lty = 2)
points(x = mean(x), y = mean(y3), pch = 1, col = COL[3], cex = 2)
points(x = mean(x), y = mean(y3), pch = 19, col = COL[3], cex = 0.9)
text(x = mean(x)+0.2, y = mean(y2)+0.4, expression(paste("(", bar(x), ", " , bar(y), ")")), pos = 3, col = COL[3])
dev.off()