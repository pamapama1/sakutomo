window.addEventListener('load', function(){

var ctx = document.getElementById("myLineChart");
  var myLineChart = new Chart(ctx, {
    
    type: 'bar',
    data: {
        labels: ['6月1日', '6月2日', '6月3日', '6月4日','6月5日','6月6日','6月7日'],
        datasets: [{
            //棒グラフ
            label: "売上",
            data: [30, 45, 40, 35, 30, 40, 30],
            backgroundColor: "rgba(0,0,128,0.5)", 
            yAxisID: 'left-y-axis'
        }, {
            //折れ線グラフ
            label: "客数",
            type: 'line',
            data: [1400, 1550, 1470, 1390, 1500, 1480, 1420],
            borderColor: "rgba(255,255,0,1)",
            backgroundColor: "rgba(0,0,0,0)",
            yAxisID: 'right-y-axis'
        }, {
          //折れ線グラフ
          label: "客数",
          type: 'line',
          data: [400, 150, 170, 190, 100, 180, 120],
          borderColor: "rgba(255,255,0,1)",
          backgroundColor: "rgba(0,0,0,0)",
          yAxisID: 'right-y-axis'
        }]
    },
    options: {
      title: {
        display: true,
        text: '客数・売上 状況'
      },
      scales: {
            yAxes: [
                {
                  id: 'left-y-axis',
                  position: 'left',
                  ticks: {
                    suggestedMax: 50,
                    suggestedMin: 0,
                    stepSize: 10,
                    callback: function(value, index, values){
                      return  value +  '万円'
                    }
                  }
              }, {
                  id: 'right-y-axis',
                  position: 'right',
                  ticks: {
                    suggestedMax: 500,
                    suggestedMin: 0,
                    stepSize: 100,
                    callback: function(value, index, values){
                      return  value +  '人'
                    }
                  },
                  // グリッドラインを消す
                  gridLines: {
                    drawOnChartArea: false, 
                  },
              }
           ]
        }
     }
  });
})