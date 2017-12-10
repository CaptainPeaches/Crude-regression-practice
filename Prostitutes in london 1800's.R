dat2 <- HistData::Prostitutes
  plot(count ~ Year, data = dat2,
       main = "Prostitutes in the 1800's",
       xlab = "Year",
       ylab = "# of Prostitutes")

    #linreg regression add
    linreg2 <- lm(formula = count ~ Year, data = dat2)
    abline(linreg2, lwd = 2, col = 'blue')
    print(summary(linreg2))

    #Is there a way to integrate these two so the quadratic regression is an added line to plot
    #Quadratic regression add 
      year2 <- (dat2$Year^2)
      quadreg <- lm(formula = count ~ Year + year2, data = dat2)
        summary(quadreg)
         fit1 <- fitted(quadreg)
            lines(fit1 ~ dat2$Year, lwd = 2, col = 'red')
            
            #Faux spline plot using Loess function
    
dat2 <- HistData::Prostitutes
            
plot(count ~ Year, data = dat2,
                 main = "Prostitutes in the 1800's",
                 xlab = "Year",
                 ylab = "# of Prostitutes")
                  
  lo <- loess(dat2$count ~ dat2$Year)
     lines(predict(lo) ~ dat2$Year, col = 'green', lwd = 4)
      
     
  