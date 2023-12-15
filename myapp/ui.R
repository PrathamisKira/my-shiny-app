library(shiny)

shinyUI(
  navbarPage("My Application",
             tabPanel("Visual Analysis",
                      fluidPage(
                        titlePanel("The Co-relation between Miles Per Gallon(MPG) and other features through Box Plots and Regression Model"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight (lb/1000)" = "wt",
                                          "1/4 mile time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "am",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carb"
                                        )),
                            
                            checkboxInput("outliers", "Show Outliers in Co-relation", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Regression model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("Info on Analysis",
                      
                      h3("Boxplot Evaluation"),
                      helpText("We are exploring the CO-RELATION between all the other features versus MPG, extracting extremely valuable information from the data set. with just a few clicks, realizing how much MPG values(Y-axis) fall under certain values of other features(X-axis) On the Boxplots. Having the facility to analyze the relation with or without the outliers using the checkbox",
                               ),
                      h3("Regression Model Evaluation"),
                      p("With the Regression model extracting just as valuable information about the differences in the proportionality of the variables with MPG, subjectively."),
                      
                      
             ),
             tabPanel("About the Data Set",
                      h2("Famous mtcars dataset with 32 observations on 11 variables."),
                      hr(),
                      h3("Dataset Origin"),
                      helpText("The data was extracted from the 1974 Motor Trend US magazine,",
                               " and comprises fuel consumption and 10 aspects of automobile design and performance",
                               " for 32 automobiles (1973-74 models)."),
                      h3("Format"),
                      p("Summary upon Features"),
                      
                      p("  [, 1]   mpg         Miles/(US) gallon"),
                      p("  [, 2]	 cyl	 Number of cylinders"),
                      p("  [, 3]	 disp	 Displacement (cu.in.)"),
                      p("  [, 4]	 hp	 Gross horsepower"),
                      p("  [, 5]	 drat	 Rear axle ratio"),
                      p("  [, 6]	 wt	 Weight (lb/1000)"),
                      p("  [, 7]	 qsec	 1/4 mile time"),
                      p("  [, 8]	 vs	 V/S"),
                      p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                      p("  [,10]	 gear	 Number of forward gears"),
                      p("  [,11]	 carb	 Number of carburetors"),
                      
                      h3("Source"),
                      
                      p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.")
             ),
             tabPanel("Traceback to my Github repository",
                      a("https://github.com/PrathamisKira/my-shiny-app.git"),
                      hr(),
                      h4("The Repository contains ui.R and server.R files, as required in the instructions."),
                      h4("Thank You for evaluating or visiting my Shiny Application, this is my first time developing an apllication with these type of functionalities.")
             )
  )
)