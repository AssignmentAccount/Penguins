savePlot_png <- function(filename, size, res, scaling,plot) {
  
  agg_png(filename,
          width = size,
          height = size,
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