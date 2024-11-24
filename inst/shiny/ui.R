ui <- shinydashboard::dashboardPage(
  shinydashboard::dashboardHeader(title = "Ciccaba"),
  shinydashboard::dashboardSidebar(
    tags$head(tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")),
    tags$script(src = "tips.js"),
    shinydashboard::sidebarMenu(
      id = "menu",
      shinydashboard::menuItem("Freezers", tabName = "freezer", icon = icon("table")),
      shinydashboard::menuItem("Locators", tabName = "locator", icon = icon("table")),
      shinydashboard::menuItem("Incubator", tabName = "incubator", icon = icon("table"))
    )
  ),

  shinydashboard::dashboardBody(
    tabItems(
      tabItem(
        tabName= "freezer",
        h3("First Page"),
        fluidRow(
        column(
          width = 4,
          h4("Freezer Inputs"), # Optional section heading
          numericInput("vlad_freez", "Vlad Freezer", value = ""),
          numericInput("vlad_fridge", "Vlad Fridge", value = ""),
          numericInput("cairo_fridge", "Small Fridge", value = ""),
          numericInput("cairo_freezer", "Small Freezer", value = ""),
          numericInput("cairo_minustwenty", "Cairo -20C", value = ""),
          numericInput("cairo_minuseighty", "Cairo -80C", value = "")
        ),
        column(
          width = 4,
          h4("Locator Inputs"), # Optional section heading
          numericInput("alpha_start", "Alpha Start", value = ""),
          numericInput("beta_start", "Beta Start", value = ""),
          numericInput("gamma_start", "Gamma Start", value = ""),
          numericInput("delta_start", "Delta Start", value = ""),
          numericInput("alpha_final", "Alpha Final", value = ""),
          numericInput("beta_final", "Beta Final", value = ""),
          numericInput("gamma_final", "Gamma Final", value = ""),
          numericInput("delta_final", "Delta Final", value = ""),
          numericInput("locator_start", "Start Time", value = ""),
          numericInput("locator_end", "End Time", value = "")
        ),
        column(
          width = 4,
          h4("Incubator Inputs"), # Optional section heading
          numericInput("CO2", "CO2 psi", value = ""),
          numericInput("small_inc_temp", "Small Incubator Temp", value = ""),
          numericInput("small_inc_co2", "Small Incubator C02", value = ""),
          numericInput("small_inc_water", "Small Incubator Water Added mL", value = ""),
          numericInput("large_inc_temp", "Large Incubator Temp", value = ""),
          numericInput("large_inc_co2", "Large Incubator CO2", value = ""),
          numericInput("large_inc_water", "Large Incubator Water Added mL", value = "")
        )
    )
  ),
  tabItem(
    tabName = "page2",
    h3("Page 2: Incubator Inputs"),
    fluidRow(
      column(
        width = 4,
        h4("Small Incubator"),
        numericInput("small_inc_temp", "Temp (°C)", value = 37.0),
        numericInput("small_inc_co2", "CO2 (%)", value = 5.0),
        numericInput("small_inc_water", "Water (mL)", value = 0)
      ),
      column(
        width = 4,
        h4("Large Incubator"),
        numericInput("large_inc_temp", "Temp (°C)", value = 37.0),
        numericInput("large_inc_co2", "CO2 (%)", value = 5.0),
        numericInput("large_inc_water", "Water (mL)", value = 0)
      )
    )
  )
    )
  )
)


