savePlot_png <- function(filename, width, height, res, scaling,plot) {
  
  agg_png(filename,
          width = width,
          height = height,
          units = "cm",
          res = res,
          scaling = scaling)
  print(plot)
  dev.off()
}

savePlot_svg <- function(filename,size,plot) {
  
  svglite(filename,
          width = size,
          height = size)
  print(plot)
  dev.off()
  
}

multiplot_png <- function(filename, size, res, scaling, plot1, plot2, plot3,name1,name2,name3) {
  
  agg_png(filename,
          width = size,
          height = size,
          units = "cm",
          res = res,
          scaling = scaling)
  par(mfrow = c(1,3))
  hist(plot1, main = name1)
  hist(plot2, main = name2)
  hist(plot3, main = name3)
  dev.off()
  
}

