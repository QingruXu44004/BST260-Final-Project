#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)
library(ggplot2)

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    # Application title
    titlePanel("Explore the Dataset"),
    
    h3("Distribution of Variables"),
    p("This serves as a tool for visual exploration of the variables in this dataset. We can also assess if any of the variables is biased, and refine our view of the distribution by adjusting number of bins."),
    tabsetPanel(
        tabPanel("Popularity",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of popularity. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hpop")
                     )
                 )),
        tabPanel("acousticness",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of acousticness. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num2",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("haco")
                     )
                 )),
        tabPanel("danceability",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of danceability. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num3",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hdan")
                     )
                 )),
        tabPanel("energy",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of energy. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num4",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hene")
                     )
                 )),
        tabPanel("instrumentalness",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of instrumentalness. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num5",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hins")
                     )
                 )),
        tabPanel("key",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of key.")
                     ),
                     mainPanel(
                         plotOutput("hkey")
                     )
                 )),
        tabPanel("liveness",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of liveness. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num6",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hliv")
                     )
                 )),
        tabPanel("loudness",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of loudness. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num7",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hlou")
                     )
                 )),
        tabPanel("speechiness",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of speechiness. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num8",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hspe")
                     )
                 )),
        tabPanel("valence",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of valence. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num10",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hval")
                     )
                 )),
        tabPanel("tempo",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of tempo. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num9",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("htem")
                     )
                 )),
        tabPanel("music_genre",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of music genre.")
                     ),
                     mainPanel(
                         plotOutput("hgen")
                     )
                 ))
    ),
    br(),
    h3("Look at Top 20% Poplarity, Distribution of Variables"),
    p("One of the tasks of this project is to predict popularity. Here we visually assess the distribution of variables for the top 20% songs ranked by popularity." ),
    tabsetPanel(
        tabPanel("acousticness",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of acousticness. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num12",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("haco1")
                     )
                 )),
        tabPanel("danceability",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of danceability. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num13",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hdan1")
                     )
                 )),
        tabPanel("energy",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of energy. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num14",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hene1")
                     )
                 )),
        tabPanel("instrumentalness",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of instrumentalness. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num15",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hins1")
                     )
                 )),
        tabPanel("key",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of key.")
                     ),
                     mainPanel(
                         plotOutput("hkey1")
                     )
                 )),
        tabPanel("liveness",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of liveness. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num16",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hliv1")
                     )
                 )),
        tabPanel("loudness",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of loudness. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num17",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hlou1")
                     )
                 )),
        tabPanel("speechiness",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of speechiness. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num18",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hspe1")
                     )
                 )),
        tabPanel("valence",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of valence. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num20",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("hval1")
                     )
                 )),
        tabPanel("tempo",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of tempo. Use slider bar below to customize number of bins."),
                         
                         br(),
                         
                         sliderInput("num19",
                                     "Number of Bins:",
                                     value = 25,
                                     min = 1, max = 100)
                     ),
                     mainPanel(
                         plotOutput("htem1")
                     )
                 )),
        tabPanel("music_genre",
                 sidebarLayout(
                     sidebarPanel(
                         p("View distribution of music genre.")
                     ),
                     mainPanel(
                         plotOutput("hgen1")
                     )
                 ))
    ),
    br(),
    h3("Tempo, Dancibility, Liveness, Key and Popularity"),
    p("Based on our subject-mater knowledge, mainstream, popular music are usually \"upbeat\", 
      dancible and lively. Dancibility and liveliness might corresponse to certain trend in keys and tempos. 
      Here we plot dancibility and liveliness for songs across popularity, with each datapoint colored by the song's key and sized by its tempo"),
    
    sidebarLayout(
        sidebarPanel(
            # Add some text and a couple of hyper links before the slider for year
            p("Plot dancibility and liveliness for songs across popularity, with each datapoint colored by the song's key and sized by its tempo. Use slider bar to plot songs with a particular popularity."),
            
            # Add some space between the text above and animated
            # slider bar below
            br(),
            
            # Input: year slider with basic animation
            sliderInput("Popularity", "Popularity:",
                        min = 0, max = 99,
                        value = 0, 
                        step = 1,
                        sep = "",       # keep years in year format and not 1,960 format
                        ticks = FALSE,  # don't show tick marks on slider bar
                        animate = TRUE) # add play button to animate
        ),
        
        # Show a scatter plot for all countries
        mainPanel(
            plotOutput("scatterPlot")
        )
    )
    
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    data_clean <- readRDS("music_genre_clean.rds")
    data_clean$tempo <- as.integer(data_clean$tempo)
    top80 <- data_clean %>%
        filter(popularity >= 80)
    
    output$hpop <- renderPlot({
        ggplot(data_clean) +
            geom_histogram(aes(popularity), bins = input$num)
    })
    
    output$haco <- renderPlot({
        ggplot(data_clean) +
            geom_histogram(aes(acousticness), bins = input$num2)
    })
    
    output$hdan <- renderPlot({
        ggplot(data_clean) +
            geom_histogram(aes(danceability), bins = input$num3)
    })
    
    output$hene <- renderPlot({
        ggplot(data_clean) +
            geom_histogram(aes(energy), bins = input$num4)
    })
    
    output$hins <- renderPlot({
        ggplot(data_clean) +
            geom_histogram(aes(instrumentalness), bins = input$num5)
    })
    
    output$hkey <- renderPlot({
        ggplot(data_clean, aes(key)) +
            geom_bar()
    })
    
    output$hliv <- renderPlot({
        ggplot(data_clean) +
            geom_histogram(aes(liveness), bins = input$num6)
    })
    
    output$hlou <- renderPlot({
        ggplot(data_clean) +
            geom_histogram(aes(loudness), bins = input$num7)
    })
    
    output$hspe <- renderPlot({
        ggplot(data_clean) +
            geom_histogram(aes(speechiness), bins = input$num8)
    })
    
    output$htem <- renderPlot({
        ggplot(data_clean) +
            geom_histogram(aes(tempo), bins = input$num9)
    })
    output$hval <- renderPlot({
        ggplot(data_clean) +
            geom_histogram(aes(valence), bins = input$num10)
    })
    output$hgen <- renderPlot({
        ggplot(data_clean, aes(music_genre)) +
            geom_bar()
    })
    
    output$haco1 <- renderPlot({
        ggplot(top80) +
            geom_histogram(aes(acousticness), bins = input$num12)
    })
    
    output$hdan1 <- renderPlot({
        ggplot(top80) +
            geom_histogram(aes(danceability), bins = input$num13)
    })
    
    output$hene1 <- renderPlot({
        ggplot(top80) +
            geom_histogram(aes(energy), bins = input$num14)
    })
    
    output$hins1 <- renderPlot({
        ggplot(top80) +
            geom_histogram(aes(instrumentalness), bins = input$num15)
    })
    
    output$hkey1 <- renderPlot({
        ggplot(top80, aes(key)) +
            geom_bar()
    })
    
    output$hliv1 <- renderPlot({
        ggplot(top80) +
            geom_histogram(aes(liveness), bins = input$num16)
    })
    
    output$hlou1 <- renderPlot({
        ggplot(top80) +
            geom_histogram(aes(loudness), bins = input$num17)
    })
    
    output$hspe1 <- renderPlot({
        ggplot(top80) +
            geom_histogram(aes(speechiness), bins = input$num18)
    })
    
    output$htem1 <- renderPlot({
        ggplot(top80) +
            geom_histogram(aes(tempo), bins = input$num19)
    })
    output$hval1 <- renderPlot({
        ggplot(top80) +
            geom_histogram(aes(valence), bins = input$num20)
    })
    output$hgen1 <- renderPlot({
        ggplot(top80, aes(music_genre)) +
            geom_bar()
    })
    
    output$scatterPlot = renderPlot({
        # Filter year to be the input year from the slider
        data_clean %>% filter(popularity %in% input$Popularity & !is.na(danceability)) %>%
            ggplot(aes(danceability, liveness, color = key, size = tempo)) +
            geom_point(alpha = 0.5) +
            xlab("Danceability") +
            ylab("Liveness") +
            
            # Set x and y axis limits to keep the same for each tempo
            scale_x_continuous(breaks = seq(0, 1, 0.1), limits = c(0, 1)) +
            scale_y_continuous(breaks = seq(0, 1, 0.1), limits = c(0, 1)) +
            
            # Make the legend titles nicer
            scale_color_discrete(name = "Key") +
            scale_size_continuous(name = "Tempo") +
            
            # Change the title of the plot for each tempo
            
            ggtitle(sprintf("Energy vs. Liveness for songs with popularity %d", input$Popularity)) 
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
