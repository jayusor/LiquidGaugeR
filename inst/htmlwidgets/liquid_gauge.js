HTMLWidgets.widget({

  name: 'liquid_gauge',

  type: 'output',

  factory: function(el, width, height,x) {

    // TODO: define shared variables for this instance
    var id_gauge = el.id+"_gauge";

    d3.select(el)
      .append("svg")
      .attr("width", width)
      .attr("height", height)
      .attr("id",id_gauge);

    var gauge = d3.select("#"+id_gauge);
    var initialized = false;

    return {

      renderValue: function(x) {
          if (!initialized) {
            initialized = true;
            gauge.call(d3.liquidfillgauge,x.number,x.options);

          } else {
            gauge.on("valueChanged")(x.number);
          }
      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
