$(document).ready(function () {
  alert("test");
  $.ajax({
    url: "../for_chart.php",

    type: "GET",
    success: function (data) {
      console.log(data);

      var datetime = [];
      var value1 = [];
      //var twitter_follower = [];
      //var googleplus_follower = [];

      for (var i in data) {
        datetime.push(data[i].reading_time);
        value1.push(data[i].value1);
        //twitter_follower.push(data[i].twitter);
        //googleplus_follower.push(data[i].googleplus);
      }

      var chartdata = {
        labels: datetime,
        datasets: [
          {
            label: "Value1",
            fill: false,
            lineTension: 0.1,
            backgroundColor: "rgba(59, 89, 152, 0.75)",
            borderColor: "rgba(59, 89, 152, 1)",
            pointHoverBackgroundColor: "rgba(59, 89, 152, 1)",
            pointHoverBorderColor: "rgba(59, 89, 152, 1)",
            data: value1,
          },
        ],
        options: {
          maintainAspectRatio: false,
          animation: false,
          legend: { display: true },
          scales: {
            xAxes: [
              {
                type: "time",
                time: { unit: "day" },
              },
            ],
          },
        },
      };

      var ctx = $("#charts");

      var LineGraph = new Chart(ctx, {
        type: "line",
        data: chartdata,
      });
    },
    error: function (data) {},
  });
});
