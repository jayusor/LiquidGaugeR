HTMLWidgets.widget({

  name: 'liquid_gauge',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance
    var id_gauge = el.id+"_gauge";

    d3.select(el)
      .append("svg")
      .attr("width", width)
      .attr("height", height)
      .attr("id",id_gauge);

    var gauge = d3.select("#"+id_gauge);
    gauge.call(d3.liquidfillgauge,1);

    return {

      renderValue: function(x) {

        // TODO: code to render the widget, e.g.
        gauge.on("valueChanged")(x.number);


      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
