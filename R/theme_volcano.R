#' Personal theme for volcano plots
#'
#' @export theme_volcano
#' @import ggtext
#' @import ggplot2
#' @import grid
#'

theme_volcano <- function() {
  font <- "Roboto"

  ggplot2::theme_bw() +
  ggplot2::theme(
  #axis.title = element_blank(),      # Remove axis title
  axis.text.x = ggplot2::element_text(size = 12, color = "grey30"),              # Set size and color of x-axis text
  axis.text.y = ggplot2::element_text(size = 12, color = "grey30"),              # Set size and color of y-axis text
  axis.ticks = ggplot2::element_line(color = "grey91", linewidth= .5),           # Set color and width of axis ticks
  axis.ticks.length.x = grid::unit(.5, "lines"),                              # Set length of x-axis ticks
  axis.ticks.length.y = grid::unit(.7, "lines"),                              # Set length of y-axis ticks

  panel.grid.major = ggplot2::element_line(color=NA),                            # Remove major panel grid line
  plot.margin = ggplot2::margin(20, 40, 20, 40),                                 # Set margins for the plot
  plot.background = ggplot2::element_rect(fill = "grey98", color = "grey98"),    # Set background color and border of the plot
  panel.background = ggplot2::element_rect(fill = "grey98", color = "grey98"),   # Set background color and border of the plot panel

  legend.key= ggplot2::element_rect(fill = "grey98", colour = "grey98"),         # Set background color and border of the legend key
  legend.background= ggplot2::element_rect(fill = "grey98", colour = "grey98"),  # Set background color and border of the legend

  plot.title = ggplot2::element_text(color = "grey10", size = 18, face = "bold", # Set color, size, face and position of the plot title
                            margin = margin(t = 25), hjust=0.5),
  plot.subtitle = ggtext::element_markdown(color = "grey30", size = 12,         # Set color, size, lineheight, and position of the plot subtitle
                                   lineheight = 1.35, hjust=0.5),
  plot.caption = ggplot2::element_text(color = "grey30", size = 10,              # Set color, size, lineheight, and position of the plot caption
                              lineheight = 1.2, hjust = 0,
                              margin = margin(t = 80))
)
    }


