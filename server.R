
#server script for United Nations Advanced Example
shinyServer(function(input, output, session) {
  
  output$windrose_plot <- renderPlotly({
    if (length(input$Mes_AÃ.o) == 0) {
      print("Seleccione al menos una fecha")
    } else {
      vientos2 <- vientos[vientos$Mes_AÃ.o == input$Mes_AÃ.o, ]
    #   
    #   # Graph title
      if (length(input$Mes_AÃ.o) > 2) {
        j_names_comma <- paste(input$Mes_AÃ.o[-length(input$Mes_AÃ.o)], collapse = ', ')
        j_names <- paste0(j_names_comma, ", and ", input$Mes_AÃ.o[length(input$Mes_AÃ.o)])
     } else {
        j_names <- paste(input$Mes_AÃ.o, collapse = ' and ')
      }
    
    # convertimos la coma en decimal
      
    vientos2$Viento<-as.numeric(gsub(",", ".", vientos2$Viento, fixed = TRUE))
    
    p <- plot_ly(data=vientos2, r = ~Viento, t = ~DirViento) %>% 
      add_area(color = ~Viento2)%>%
      layout( radialaxis = list(ticksuffix = "%"), orientation = 0)
    p
    
    }
  })
})


