require(leaflet)

     lat <- c(51.200323, 51.163542, 50.989305, 50.993447)
     long <- c(-113.995836, -114.015353, -114.070578, -115.378246)
     url <- c("<a href='https://stores.basspro.com/ca/ab/rocky-view/112-261055-cross-iron-blvd.html'>Bass Pro Shops</a href",
           "<a href='https://www.cabelas.ca'>Cabelas</a href", 
           "<a href='https://www.facebook.com/Campers-Village-Outdoor-Adventure-Store-2231713673778362/?ref=page_internal&path=%2FCampers-Village-Outdoor-Adventure-Store-2231713673778362%2F;'>Campers Village</a href",
           "Spray Lakes")
     cat <- c("blue", "blue", "blue", "green")
     
     df <- data.frame(lat = lat, long = long, url = url, cat = cat)
     
     
     leaf <- leaflet() %>% addTiles() %>% 
          addCircleMarkers(df$long, df$lat, 
                           popup = df$url,
                           color = df$cat) %>%
          addLegend(labels = c("Shopping", "Camping"),
                    colors = c("Blue", "Green"))
     leaf
     