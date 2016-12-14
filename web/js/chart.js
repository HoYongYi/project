/**
 * Created by acer on 14/12/2016.
 */


function plotAxis(){

    this.cfg.axes = {

        xaxis : {
            min : 2001,
            nax : 2017,
            tickInterval : 1,
            tickOptions : {
                formatString : '%d'
            },
            label : 'Year',
            labelRenderer : $.jqplot.CanvasAxisLabelRenderer,
        },
        highlighter: {
            show: true,
            formatString:'%s',
            tooltipLocation:'sw',
            useAxesFormatters:false
        }

    }

}
