dat <- HistData::Arbuthnot
  plot(x = dat$Year,
       y = dat$Ratio,
       main = "Mortality Ratio Over Time",
       xlab = "Year",
       ylab = "Mortality Ratio",
       col = 'black',
       type = 'l')

    los <- loess(dat$Ratio ~ dat$Year) 
      lines(predict(los) ~ dat$Year,
            lwd = '2',
            col = 'green')
      