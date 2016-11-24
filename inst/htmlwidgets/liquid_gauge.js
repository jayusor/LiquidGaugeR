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

    // Opciones por defecto
    var default_opts = {
      waveAnimateTime: 2000,
      waveHeight: 0.3,
      waveCount: 1
    };

    var gauge = d3.select("#"+id_gauge);

    return {

      renderValue: function(x) {

        // Modifico las opciones
        for (var name in x.options)
          default_opts[name] = x.options[name];

        gauge.call(d3.liquidfillgauge,x.number,x.options);

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
