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

  text=ggplot2::element_text(size = 16),

  axis.text = ggplot2::element_text(size=14),
  axis.text.x = ggplot2::element_text(margin = margin(t = 2.5, r =0, b = 0, l = 0)),
  axis.text.y = ggplot2::element_text(margin = margin(t = 0, r =2.5, b = 0, l = 0)),

  axis.ticks.length.x =  rid::unit(0.25,"cm"),
  axis.ticks.length.y = grid::unit(0.25,"cm"),
  axis.ticks = ggplot2::element_line(color = "#333333", linewidth= .5),           # Set color and width of axis ticks

  axis.title = ggplot2::element_text(size=15),

  plot.margin = ggplot2::margin(20, 40, 20, 40),                                 # Set margins for the plot
  plot.background = ggplot2::element_rect(fill = "grey98", color = "grey98"),    # Set background color and border of the plot

  panel.grid.major = ggplot2::element_line(color=NA),                            # Remove major panel grid line
  panel.background = ggplot2::element_rect(fill = "grey98", color = "grey98"),   # Set background color and border of the plot panel

  legend.key= ggplot2::element_rect(fill = "grey98", colour = "grey98"),         # Set background color and border of the legend key
  legend.title = ggplot2::element_text(hjust=0.5, size=12),
  legend.text = ggplot2::element_text(size=10),
  legend.background= ggplot2::element_rect(fill = "grey98", colour = "grey98"),  # Set background color and border of the legend

  plot.title = ggtext::element_markdown(color = "grey10", size = 18, face = "bold", # Set color, size, face and position of the plot title
                                         margin = margin(0,0,0.5,0, unit = "cm"), hjust=0.5),

  plot.subtitle = ggtext::element_markdown(color = "grey30", size = 12,         # Set color, size, lineheight, and position of the plot subtitle
                                   lineheight = 1.35, hjust=0.5),

  plot.caption = ggtext::element_markdown(color = "grey30", size = 10,         # Set color, size, lineheight, and position of the plot subtitle
                                          lineheight = 1.35, hjust=0.5)
)
    }




