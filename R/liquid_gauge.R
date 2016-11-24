#' D3 Liquid Fill Gauge
#'
#' Generate D3 Liquid Fill Gauge
#' [url](http://bl.ocks.org/brattonc/5e5ce9beee483220e2f6)
#'
#' @import htmlwidgets
#'
#' @export
liquid_gauge <- function(number,options = NULL, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    number = number,
    options = options
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'liquid_gauge',
    x,
    width = width,
    height = height,
    package = 'LiquidGaugeR',
    elementId = elementId
  )
}

#' Shiny bindings for liquid_gauge
#'
#' Output and render functions for using liquid_gauge within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a liquid_gauge
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name liquid_gauge-shiny
#'
#' @export
liquid_gaugeOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'liquid_gauge', width, height, package = 'LiquidGaugeR')
}

#' @rdname liquid_gauge-shiny
#' @export
renderLiquid_gauge <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, liquid_gaugeOutput, env, quoted = TRUE)
}
