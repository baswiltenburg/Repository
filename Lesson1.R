r <- function(country1, country2, country3, country4, country5, level1, level0){
  datdir <- 'data'
  dir.create(datdir, showWarnings = FALSE)
  adm1 <- raster::getData("GADM", country = country1, level = level1, path = datdir)
  adm2 <- raster::getData("GADM", country = country2, level = level0, path = datdir)
  adm3 <- raster::getData("GADM", country = country3, level = level0, path = datdir)
  adm4 <- raster::getData("GADM", country = country4, level = level0, path = datdir)
  adm5 <- raster::getData("GADM", country = country5, level = level0, path = datdir)
  plot(adm1, col = "green4", axes = T)
  plot(adm2, col = "grey", add = T)
  plot(adm3, col = "grey", add = T)
  plot(adm4, col = "grey", add = T)
  plot(adm5, col = "grey", add = T)
  grid()
}

r("NLD","BEL","LUX","DEU","GBR", 1, 0)