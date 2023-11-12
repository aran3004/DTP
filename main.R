# Load the shiny package
library(shiny)

# Define the user interface (UI) for the application
ui <- fluidPage(
  # Application title
  titlePanel("A Closer Look at Your Spending Habits"),
  
  # Sidebar layout with input and output definitions
  sidebarLayout(
    sidebarPanel(
      # Input for Gross Income per Week
      numericInput("grossIncome",
                   "Gross Income per Week:",
                   value = 0, min = 0, step = 0.01),
      
      # Subtitle
      h4("How much do you spend per week on..."),
      
      # Input for different spending categories
      numericInput("foodDrinks",
                   "Food and Non-Alcoholic Drinks:",
                   value = 0, min = 0, step = 0.01),
      
      numericInput("alcoholTobacco",
                   "Alcoholic Drinks and Tobacco:",
                   value = 0, min = 0, step = 0.01),
      
      numericInput("clothingFootwear",
                   "Clothing and Footwear:",
                   value = 0, min = 0, step = 0.01),
      
      numericInput("housing",
                   "Housing (Net), Fuel and Power:",
                   value = 0, min = 0, step = 0.01)
    ),
    
    mainPanel(
      # Main panel content (e.g., outputs, plots) goes here
      # Placeholder for outputs
    )
  )
)


# Define server logic required to draw a plot
server <- function(input, output) {
  
  # Placeholder for server logic

}

# Run the application 
shinyApp(ui = ui, server = server)
