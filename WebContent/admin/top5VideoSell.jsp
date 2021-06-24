<%@page import="shop.DAO.BuyDAO"%>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<html>
<head>
<%@include file="../admin/adminAside.jsp" %>
<style>

.highcharts-figure, .highcharts-data-table table {
    min-width: 360px; 
    max-width: 800px;
    margin: 1em auto;
}

.highcharts-data-table table {
   border-collapse: collapse;
   border: 1px solid #EBEBEB;
   margin: 10px auto;
   text-align: center;
   width: 100%;
   max-width: 500px;
}
.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}
.highcharts-data-table th {
   font-weight: 600;
    padding: 0.5em;
}
.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
    padding: 0.5em;
}
.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}
.highcharts-data-table tr:hover {
    background: #f1f7ff;
}


</style>
</head>
<main>
<div style="padding: 50px; margin-left: 200px;">
<figure class="highcharts-figure">
    <div id="container"></div>
</figure>
<script>
Highcharts.chart('container', {

    title: {
        text: 'top 5 best-selling videos'
    },

    	xAxis: {
    		 categories: [ '${vlist[0][0]}', '${vlist[1][0]}',  '${vlist[2][0]}', '${vlist[3][0]}', '${vlist[4][0]}' ]
        },
    

    yAxis: {
  
       min:'0',
        title: {
            text: 'book '
        }
    },


    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
        
    },

    series: [{
       name : 'video',
       data : [
           ['${vlist[0][0]}', ${vlist[0][1]}],
           ['${vlist[1][0]}', ${vlist[1][1]}],
           ['${vlist[2][0]}', ${vlist[2][1]}],
           ['${vlist[3][0]}', ${vlist[3][1]}],
           ['${vlist[4][0]}', ${vlist[4][1]}]
        ]
    }],

    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    layout: 'horizontal',
                    align: 'center',
                    verticalAlign: 'bottom'
          		}
            }
        }]
    }
});
</script>
</div>
</main>
</html>