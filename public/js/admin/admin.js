$(document).ready(function () {
    //Better to construct options first and then pass it as a parameter
    var options = {
        title: {
            text: "Product summary"
        },
        animationEnabled: true,
        data: [
            {
                type: "spline", //change it to line, area, column, pie, etc
                dataPoints: [
                    {label: "banana", y: 10},
                    {x: 20, y: 12},
                    {x: 30, y: 8},
                    {x: 40, y: 14},
                    {x: 50, y: 6},
                    {x: 60, y: 24},
                    {x: 70, y: -4},
                    {x: 80, y: 10}
                ]
            }
        ]
    };

    $("#chart_product").CanvasJSChart(options);
});