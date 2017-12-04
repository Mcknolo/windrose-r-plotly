

#Interfaz de usuario para el selector de fechas de rosa de los vientos
shinyUI(fluidPage(
  
  # título de la aplicación
  titlePanel("Rosa de los vientos"),
  
  # Barra lateral con selector
  
  sidebarPanel(
    h3("Selector de fechas"),
    # Select Justices name here
    selectizeInput(inputId = "Mes_AÃ.o", label = "Mes y Año",
                   choices = unique(vientos$Mes_AÃ.o), multiple = T,
                   options = list(maxItems = 2, placeholder = 'Selecciona una fecha'),
                   selected = "nov.-16"),
    helpText("Seleccione el mes y año para visualizar la rosa de los vientos  correspondiente,borre la opción que no desea con la tecla 'Del'")
  ),
  
  # Gráfico de la distribución generada
  mainPanel(
    plotlyOutput("windrose_plot")
  )
))

