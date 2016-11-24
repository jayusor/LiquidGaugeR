library(LiquidGaugeR)
list(
  # Values
  minValue= 0, # The gauge minimum value.
  maxValue= 100, # The gauge maximum value.

  # Styles
  circleThickness= 0.05, # The outer circle thickness as a percentage of it's radius.
  circleFillGap= 0.05, # The size of the gap between the outer circle and wave circle as a percentage of the outer circles radius.
  circleColor= "#178BCA", # The color of the outer circle.
  backgroundColor= NULL, # The color of the background
  waveColor= "#178BCA", # The color of the fill wave.
  width= 0, # You might want to set the width and height if it is not detected properly by the plugin
  height= 0,

  # Waves
  waveHeight= 0.05, # The wave height as a percentage of the radius of the wave circle.
  waveCount= 1, # The number of full waves per width of the wave circle.
  waveOffset= 0, # The amount to initially offset the wave. 0 = no offset. 1 = offset of one full wave.

  # Animations
  waveRise= TRUE, # Control if the wave should rise from 0 to it's full height, or start at it's full height.
  waveRiseTime= 1000, # The amount of time in milliseconds for the wave to rise from 0 to it's final height.
  waveRiseAtStart= TRUE, # If set to false and waveRise at TRUE, will disable only the initial animation
  waveAnimate= TRUE, # Controls if the wave scrolls or is static.
  waveAnimateTime= 18000, # The amount of time in milliseconds for a full wave to enter the wave circle.
  waveHeightScaling= TRUE, # Controls wave size scaling at low and high fill percentages. When TRUE, wave height reaches it's maximum at 50% fill, and minimum at 0% and 100% fill. This helps to prevent the wave from making the wave circle from appear totally full or empty when near it's minimum or maximum fill.
  valueCountUp= TRUE, # If TRUE, the displayed value counts up from 0 to it's final value upon loading and updating. If false, the final value is displayed.
  valueCountUpAtStart= TRUE, # If set to false and valueCountUp at TRUE, will disable only the initial animation

  # Text
  textVertPosition= 0.5, # The height at which to display the percentage text withing the wave circle. 0 = bottom, 1 = top.
  textSize= 1, # The relative height of the text to display in the wave circle. 1 = 50%
  displayPercent= TRUE, # If TRUE, a % symbol is displayed after the value.
  textColor= "#045681", # The color of the value text when the wave does not overlap it.
  waveTextColor= "#A4DBf8" # The color of the value text when the wave overlaps it.
) -> opciones

list(
  circleThickness= 0.15,
  circleColor= "#808015",
  textColor= "#555500",
  waveTextColor= "#FFFFAA",
  waveColor= "#AAAA39",
  textVertPosition= 0.8,
  waveAnimateTime= 1000,
  waveHeight= 0.05,
  waveAnimate= TRUE,
  waveRise= TRUE,
  waveOffset= 0.25,
  textSize= 0.75,
  waveCount= 3
) -> opciones1

list(
  circleColor= "#FF7777",
  textColor= "#FF4444",
  waveTextColor= "#FFAAAA",
  waveColor= "#FFDDDD",
  circleThickness= 0.2,
  textVertPosition= 0.2,
  waveAnimateTime= 1000,
  backgroundColor= "#e0e0e0",
  valueCountUpAtStart= FALSE,
  waveRiseAtStart= T
) -> opciones2

liquid_gauge(round(runif(1)*100),opciones2)
