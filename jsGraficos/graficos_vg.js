/* gráfico 1*/
$(function () {
    $('#grafico1').highcharts({
        chart: {
            type: 'column',
            zoomType:'xy',
        },
        title: {
            text: 'Suscriptores TV por Suscripción'
        },
        colors:['#020167','#1D3C7D','#264412','#49782A','#5A9332','#D4960F'],
        
        xAxis: {
            categories: ['2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2T 2014']
        },
        yAxis: {            
            title: {
                text: '(en millones)'
            }
        },
        legend: {
            align: 'right',
            x: -70,
            verticalAlign: 'top',
            y: 20,
            floating: true,
            backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || 'white',
            borderColor: '#CCC',
            borderWidth: 1,
            shadow: false
        },
        tooltip: {
            formatter: function () {
                
                                   
                    return '<b>' + this.x + '</b><br/>' +
                    this.series.name + ': ' + this.y + '<br/>' +
                    'Total: ' + this.point.stackTotal;
                                
            }
        },
                       
        
        plotOptions: {
            column: {
                stacking: 'normal',
                dataLabels: {
                    enabled: true,
                    color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white',
                    style: {
                        textShadow: '0 0 3px black, 0 0 3px black'
                    }
                }
            }
        },
        series: [            
         
            {
            name: 'Δ4T',
            data: [null,null,null,null,null,null,null,null,null,null,null,0.4,null]
        },
        {
            name: 'Δ3T',
            data: [null,null,null,null,null,null,null,null,null,null,null,0.7,null]
        },
        {
            name: 'Δ2T',
            data: [null,null,null,null,null,null,null,null,null,null,null,0.1,0.6]
        },
            {
            name: 'Δ1T',
            data: [null,null,null,null,null,null,null,null,null,null,null,0.6,0.4]
        },
            {
            name: 'Ano',
            data: [3.5, 3.5, 3.8, 4.1, 4.7, 5.3, 6.3, 7.5, 9.8, 12.7, 16.2, 16.2, 18.0],
              
        },
        
        
        ]
    });
});




/*gráfico 2*/
$(function () {
    $('#grafico2').highcharts({
        chart: {
            plotBackgroundColor: null,
            /*plotBorderWidth: 1,//null,*/
            plotShadow: false
        },
        title: {
            text: 'Suscriptores por tecnología (en millones)'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        colors:['#020167','#1D3C7D','#264412','#49782A','#5A9332','#D4960F'],
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Assinantes por tecnologia',
            data: [
                ['Cabo 7.183',   7.183],
                ['DTH 11.731',  11.731],
            ]
        }]
    });
});




/*gráfico 3*/
$(function () {
    $('#grafico3').highcharts({
        chart: {
            type: 'column',
            zoomType:'xy',
        },
        title: {
            text: 'Suscriptores Internet Banda Ancha (en millones) - En resumen, los datos del segundo trimestre.'
        },
        colors:['#020167','#1D3C7D','#264412','#49782A','#5A9332','#D4960F'],
        
        xAxis: {
            categories: ['2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','1T 2014']
        },
        yAxis: {            
            title: {
                text: '(en millones)'
            }
        },
        
        
        legend: {
            align: 'right',
            x: -70,
            verticalAlign: 'top',
            y: 20,
            floating: true,
            backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || 'white',
            borderColor: '#CCC',
            borderWidth: 1,
            shadow: false
        },
        
        
        tooltip: {
            formatter: function () {
                
                                
                    return '<b>' + this.x + '</b><br/>' +
                    this.series.name + ': ' + this.y + '<br/>' +
                    'Total: ' + this.point.stackTotal;
                
                
            }
        },
        
               
        
        plotOptions: {
            column: {
                stacking: 'normal',
                dataLabels: {
                    enabled: true,
                    color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white',
                    style: {
                        textShadow: '0 0 3px black, 0 0 3px black'
                    }
                }
            }
        },
        
        series: [
         
            {
            name: 'Δ4T',
            data: [null,null,null,null,null,null,null,null,null,null,null,0.1,null]
        },
        {
            name: 'Δ3T',
            data: [null,null,null,null,null,null,null,null,null,null,null,0.2,null]
        },
        {
            name: 'Δ2T',
            data: [null,null,null,null,null,null,null,null,null,null,null,0.2,null]
        },
            {
            name: 'Δ1T',
            data: [null,null,null,null,null,null,null,null,null,null,null,0.3,0.2]
        },
            {
            name: 'Ano',
            data: [0.1, 0.2, 0.4, 0.6, 1.2, 1.8, 2.6, 3.2, 3.7, 4.6, 5.8, 5.8, 6.6],
              
        },
        
        ]
    });
});



/*Gráfico 4*/
$(function () {
    $('#grafico4').highcharts({
        chart: {
            type: 'column',
            zoomType:'xy',
        },
        title: {
            text: 'Facturación bruta del sector (R$ millardo o mil millones)'
        },
        colors:['#020167','#1D3C7D','#264412','#49782A','#5A9332','#D4960F'],
        
        xAxis: {
            categories: ['2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2T 2014']
        },
        yAxis: {            
            title: {
                text: '(Em bilhões)'
            }
        },
        legend: {
            align: 'right',
            x: -70,
            verticalAlign: 'top',
            y: 20,
            floating: true,
            backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || 'white',
            borderColor: '#CCC',
            borderWidth: 1,
            shadow: false
        },
        tooltip: {
            formatter: function () {
                
                   
                    return '<b>' + this.x + '</b><br/>' +
                    this.series.name + ': ' + this.y + '<br/>' +
                    'Total: ' + this.point.stackTotal;
                
            }
        },
        
               
        
        plotOptions: {
            column: {
                stacking: 'normal',
                dataLabels: {
                    enabled: true,
                    color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white',
                    style: {
                        textShadow: '0 0 3px black, 0 0 3px black'
                    }
                }
            }
        },
        series: [
        
         
       {
            name: 'Publicidade',
            data: [null,null,null,null,null,null,null,null,null,null,null,1.6,0.4]
        },
         
            {
            name: 'Δ4T - Operadores',
            data: [null,null,null,null,null,null,null,null,null,null,null,6.9,null]
        },
        {
            name: 'Δ3T - Operadores',
            data: [null,null,null,null,null,null,null,null,null,null,null,6.7,null]
        },
        {
            name: 'Δ2T - Operadores',
            data: [null,null,null,null,null,null,null,null,null,null,null,6.3,7.5]
        },
            {
            name: 'Δ1T - Operadores',
            data: [null,null,null,null,null,null,null,null,null,null,null,6.2,7.1]
        },
            {
            name: 'Ano',
            data: [3.1, 3.6, 4.3, 5.0, 6.1, 7.3, 9.3, 10.7, 12.7, 18.1, 23.8, null, null],
              
        },
            
        ]
    });
});






/*Grágico 5*/







/*Gráficos 6*/
$(function () {
    $('#grafico6').highcharts({
        chart: {
            type: 'column',
            zoomType:'xy',
        },
        title: {
            text: 'Generación de empleo ( en miles )'
        },
        colors:['#020167','#1D3C7D','#264412','#49782A','#5A9332','#D4960F'],
        
        xAxis: {
            categories: ['2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2T 2014']
        },
        yAxis: {            
            title: {
                text: '(Em milhares)'
            }
        },
        
        
        legend: {
            align: 'right',
            x: -70,
            verticalAlign: 'top',
            y: 20,
            floating: true,
            backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || 'white',
            borderColor: '#CCC',
            borderWidth: 1,
            shadow: false
        },
        
        
        tooltip: {
            formatter: function () {
                                                    
                    return '<b>' + this.x + '</b><br/>' +
                    this.series.name + ': ' + this.y + '<br/>' +
                    'Total: ' + this.point.stackTotal;
                                
            }
        },
        
               
        
        plotOptions: {
            column: {
                stacking: 'normal',
                dataLabels: {
                    enabled: true,
                    color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white',
                    style: {
                        textShadow: '0 0 3px black, 0 0 3px black'
                    }
                }
            }
        },
        
        series: [
            
            
            {
            name: 'Terceiros',
            data: [24,24,24,29,33,41,51,56,69,70,71,77,90]
              
        },
            {
            name: 'Diretos',
            data: [8,8,8,10,11,14,17,19,23,23,24,26,25]
        },
            
            
        
        
            
        
        
        ]
    });
});