#' Personal theme for volcano plots
#'
#' @export theme_volcano
#' @import ggtext
#' @import ggplot2
#' @import grid
#'
theme_volcano <- function() {
  font <- "Roboto"

  ggplot2::theme(

    # Text format:
    # This sets the font, size, type and colour of text for the chart's title
    plot.title = ggplot2::element_text(
      color = "grey10",
      size = 20,
      face = "bold",
      margin = margin(t = 25,b=10), hjust=0.5
    ),

    plot.subtitle = ggtext::element_markdown(
      color = "grey30",
      size = 12,
      lineheight = 1.35, hjust=0.5
    ),
    plot.caption = ggplot2::element_text(
      color = "grey30",
      size = 10,                           # Sets the font size, color, line height, horizontal justification, and margin of the plot caption
      lineheight = 1.2, hjust = 0,
      margin = margin(t = 80)
    ),

    legend.text=ggplot2::element_text(size=15),                                                 # Sets the font size of legend text
    legend.title=ggplot2::element_text(size=18, hjust = 0.5),
    legend.key=ggplot2::element_rect(fill = "grey98", colour = "grey98"),                      # Sets the background color and border of the legend keys
    legend.background= element_rect(fill = "grey98", colour = "grey98"),               # Sets the background color and border of the legend

    # Axis format
    axis.text.x = ggplot2::element_text(size = 15, color = "grey30", margin=margin(t=5,b=10)),  # Sets the font size, color, and margin for x-axis labels
    axis.text.y = ggplot2::element_text(size = 15, color = "grey30", margin=margin(t=0, r = 5, b = 0, l = 10)), # Sets the font size, color, and margin for y-axis labels
    axis.ticks = ggplot2::element_line(color = "grey91", linewidth = .5),                            # Sets the color and size of axis ticks
    axis.ticks.length.x = grid::unit(.5, "lines"),                                           # Sets the length of x-axis ticks
    axis.ticks.length.y = grid::unit(.7, "lines"),                                           # Sets the length of y-axis ticks
    axis.title= ggplot2::element_text(size=18),

    # Grid lines
    # This removes all minor gridlines and adds major y gridlines. In many cases you will want to change this to remove y gridlines and add x gridlines. The cookbook shows you examples for doing so
    panel.grid.major = ggplot2::element_line(color=NA),                                         # Removes major grid lines from plot

    # Blank background
    # This sets the panel background as blank, removing the standard grey ggplot background colour from the plot
    plot.background = ggplot2::element_rect(fill = "grey98", color = "grey98"),                 # Sets the background color and border of the plot
    panel.background = ggplot2::element_rect(fill = "grey98", color = "grey98")               # sets the background color of the panel
  )
}


