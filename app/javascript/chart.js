window.addEventListener('pageshow', function(){
  
  var ctx = document.getElementById("myLineChart");
    var myLineChart = new Chart(ctx, {
      
      type: 'bar',
      data: {
          labels: ['前回', '前々回', '3回目前', '4回前'],
          datasets: [{
              //棒グラフ
              label: "集中度",
              data: gon.work_evaluation,
              //data: ['1','2','3','4'],
              backgroundColor: "rgba(0,0,128,0.5)", 
              yAxisID: 'left-y-axis'
          }, {
              //折れ線グラフ
              label: "作業時間",
              type: 'line',
              data: gon.work_time_along,
             // data: ['100','200','300','400'],
              borderColor: "rgba(255,0,0,1)",
              backgroundColor: "rgba(0,0,0,0)",
              yAxisID: 'right-y-axis'
          }, {
            //折れ線グラフ
            label: "休憩時間",
            type: 'line',
            data: gon.work_break_along,
            //data: ['100','200','300','400'],
            borderColor: "rgba(255,255,0,1)",
            backgroundColor: "rgba(0,0,0,0)",
            yAxisID: 'right-y-axis'
          }]
      },
      options: {
        title: {
          display: true,
          text: '作業時間と休憩時間と集中度関係'
        },
        scales: {
              yAxes: [
                  {
                    id: 'left-y-axis',
                    position: 'left',
                    ticks: {
                      suggestedMax: 5,
                      suggestedMin: 0,
                      stepSize: 1,
                      callback: function(value, index, values){
                        return  value +  ''
                      }
                    }
                }, {
                    id: 'right-y-axis',
                    position: 'right',
                    ticks: {
                      suggestedMax: 600,
                      suggestedMin: 0,
                      stepSize: 60,
                      callback: function(value, index, values){
                        return  value +  '分'
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