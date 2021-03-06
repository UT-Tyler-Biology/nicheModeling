## prepping layers for modeling

## load libraries (not all used directly, but required as dependencies)
library(dismo)
library(fields)
library(maps)
library(rgdal)
library(raster)
library(maptools)
library(caret)

# load previously created shapefile
SEstates <- readShapePoly("shapefiles/SEstates.shp")
# set projection
projection(SEstates) <- CRS("+proj=longlat +ellps=WGS84 +towgs84=0,0,0,0,0,0,0 +no_defs")

## load WorldClim layers (you can skip this step if you only want to run the example;
#   clipped layers have been included)
# Downloaded layers from http://www.worldclim.org/current 
#   and stored somewhere on your computer for ease of access
# Make sure rgdal package is loaded
alt_l <- raster("~/data/Bioclim/alt_2-5m_bil/alt.bil")
#plot(alt_l) # to check whether loading worked
bio1_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio1.bil")
bio2_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio2.bil")
bio3_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio3.bil")
bio4_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio4.bil")
bio5_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio5.bil")
bio6_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio6.bil")
bio7_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio7.bil")
bio8_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio8.bil")
bio9_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio9.bil")
bio10_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio10.bil")
bio11_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio11.bil")
bio12_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio12.bil")
bio13_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio13.bil")
bio14_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio14.bil")
bio15_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio15.bil")
bio16_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio16.bil")
bio17_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio17.bil")
bio18_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio18.bil")
bio19_l <- raster("~/data/Bioclim/bio_2-5m_bil/bio19.bil")

## mask/clip data layers and save to file
# NOTE: check to make sure the file sizes of resulting .asc are about the same;
#  if they are not, rerun the writeRaster command
dir.create("layers")

alt <- mask(alt_l, SEstates)
alt <- crop(alt, extent(SEstates))
#plot(alt) # plot to check that masking and cropping worked
writeRaster(alt, "layers/alt.asc", format="ascii", overwrite=TRUE)

bio1 <- mask(bio1_l, SEstates)
bio1 <- crop(bio1, extent(SEstates))
writeRaster(bio1, "layers/bio1.asc", format="ascii", overwrite=TRUE)

bio2 <- mask(bio2_l, SEstates)
bio2 <- crop(bio2, extent(SEstates))
writeRaster(bio2, "layers/bio2.asc", format="ascii", overwrite=TRUE)

bio3 <- mask(bio3_l, SEstates)
bio3 <- crop(bio3, extent(SEstates))
writeRaster(bio3, "layers/bio3.asc", format="ascii", overwrite=TRUE)

bio4 <- mask(bio4_l, SEstates)
bio4 <- crop(bio4, extent(SEstates))
writeRaster(bio4, "layers/bio4.asc", format="ascii", overwrite=TRUE)

bio5 <- mask(bio5_l, SEstates)
bio5 <- crop(bio5, extent(SEstates))
writeRaster(bio5, "layers/bio5.asc", format="ascii", overwrite=TRUE)

bio6 <- mask(bio6_l, SEstates)
bio6 <- crop(bio6, extent(SEstates))
writeRaster(bio6, "layers/bio6.asc", format="ascii", overwrite=TRUE)

bio7 <- mask(bio7_l, SEstates)
bio7 <- crop(bio7, extent(SEstates))
writeRaster(bio7, "layers/bio7.asc", format="ascii", overwrite=TRUE)

bio8 <- mask(bio8_l, SEstates)
bio8 <- crop(bio8, extent(SEstates))
writeRaster(bio8, "layers/bio8.asc", format="ascii", overwrite=TRUE)

bio9 <- mask(bio9_l, SEstates)
bio9 <- crop(bio9, extent(SEstates))
writeRaster(bio9, "layers/bio9.asc", format="ascii", overwrite=TRUE)

bio10 <- mask(bio10_l, SEstates)
bio10 <- crop(bio10, extent(SEstates))
writeRaster(bio10, "layers/bio10.asc", format="ascii", overwrite=TRUE)

bio11 <- mask(bio11_l, SEstates)
bio11 <- crop(bio11, extent(SEstates))
writeRaster(bio11, "layers/bio11.asc", format="ascii", overwrite=TRUE)

bio12 <- mask(bio12_l, SEstates)
bio12 <- crop(bio12, extent(SEstates))
writeRaster(bio12, "layers/bio12.asc", format="ascii", overwrite=TRUE)

bio13 <- mask(bio13_l, SEstates)
bio13 <- crop(bio13, extent(SEstates))
writeRaster(bio13, "layers/bio13.asc", format="ascii", overwrite=TRUE)

bio14 <- mask(bio14_l, SEstates)
bio14 <- crop(bio14, extent(SEstates))
writeRaster(bio14, "layers/bio14.asc", format="ascii", overwrite=TRUE)

bio15 <- mask(bio15_l, SEstates)
bio15 <- crop(bio15, extent(SEstates))
writeRaster(bio15, "layers/bio15.asc", format="ascii", overwrite=TRUE)

bio16 <- mask(bio16_l, SEstates)
bio16 <- crop(bio16, extent(SEstates))
writeRaster(bio16, "layers/bio16.asc", format="ascii", overwrite=TRUE)

bio17 <- mask(bio17_l, SEstates)
bio17 <- crop(bio17, extent(SEstates))
writeRaster(bio17, "layers/bio17.asc", format="ascii", overwrite=TRUE)

bio18 <- mask(bio18_l, SEstates)
bio18 <- crop(bio18, extent(SEstates))
writeRaster(bio18, "layers/bio18.asc", format="ascii", overwrite=TRUE)

bio19 <- mask(bio19_l, SEstates)
bio19 <- crop(bio19, extent(SEstates))
writeRaster(bio19, "layers/bio19.asc", format="ascii", overwrite=TRUE)

## if layers have already been clipped, masked and saved and you need to reload them:
alt <- raster("layers/alt.asc")
bio1 <- raster("layers/bio1.asc")
bio2 <- raster("layers/bio2.asc")
bio3 <- raster("layers/bio3.asc")
bio4 <- raster("layers/bio4.asc")
bio5 <- raster("layers/bio5.asc")
bio6 <- raster("layers/bio6.asc")
bio7 <- raster("layers/bio7.asc")
bio8 <- raster("layers/bio8.asc")
bio9 <- raster("layers/bio9.asc")
bio10 <- raster("layers/bio10.asc")
bio11 <- raster("layers/bio11.asc")
bio12 <- raster("layers/bio12.asc")
bio13 <- raster("layers/bio13.asc")
bio14 <- raster("layers/bio14.asc")
bio15 <- raster("layers/bio15.asc")
bio16 <- raster("layers/bio16.asc")
bio17 <- raster("layers/bio17.asc")
bio18 <- raster("layers/bio18.asc")
bio19 <- raster("layers/bio19.asc")

## correlation analysis
# combine layers into one object
stacked <- stack(bio1, bio2, bio3, bio4, bio5, bio6, bio7, bio8, bio9, bio10, bio11, bio12, bio13, bio14, bio15, bio16, bio17, bio18, bio19) 
# calculate correlation
corr <- layerStats(stacked, 'pearson', na.rm=TRUE)
# save matrix of correlations
c <- corr$`pearson correlation coefficient`
# save correlation matrix to file
write.csv(c, "layers/correlationBioclim.csv")
# manually inspect this output for correlations; 
# greater than 0.7 (and less than -0.7) are correlated
# note: automated correlation assessment doesn't work well for layers
  
# for this analysis, retain bio2, bio3, bio5, bio6, bio8, bio9, bio12, bio13, bio14, bio19, and alt
