window.addEventListener('pageshow', function(){
  
  var ctx = document.getElementById("myLineChart");
    var myLineChart = new Chart(ctx, {
      
      type: 'bar',
      data: {
          labels: ['4回前', '3前回', '前々回', '前回'],
          datasets: [{
            //棒グラフ
            label: "作業時間",
            data: gon.work_time_along,
           // data: ['100','200','300','400'],
           // borderColor: "rgba(255,0,0,1)",
            backgroundColor: "rgba(255,0,0,1)",
            order:1,
            yAxisID: 'right-y-axis'
        },{
          //棒グラフ
          label: "休憩時間",
         // type: 'bar',
          data: gon.work_break_along,
          //data: ['100','200','300','400'],
         // borderColor: "rgba(255,255,0,1)",
          backgroundColor: "rgba(255,255,0,1)",
          order:2,
          yAxisID: 'right-y-axis'
        },{
              //折線グラフ
              label: "集中度",
              type: 'line',
              data: gon.work_evaluation,
              //data: ['1','2','3','4'],
              borderColor: "rgba(0,0,128,0.5)",
              order :0,
             // backgroundColor: "rgba(0,0,0,0,0)", 
              yAxisID: 'left-y-axis'
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
                      suggestedMax: 5,
                      suggestedMin: 0,
                      stepSize: 1,
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