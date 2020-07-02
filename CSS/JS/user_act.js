window.onload = function () {
  alert("test");
  $.ajax({
    url: "./for_chart.php",

    type: "GET",
    success: function (data) {
      console.log(data);
      data = JSON.parse(data);

      var amount_of_data = [];
      var contributed_date = [];

      for (var i in data) {
        amount_of_data.push(data[i].amount_of_data);
        contributed_date.push(data[i].contributed_date);
      }

      console.log(amount_of_data);

      var chartdata = {
        labels: contributed_date,
        datasets: [
          {
            label: "amount of contributed data",
            fill: false,
            lineTension: 0.1,
            backgroundColor: "pink",
            borderColor: "pink",
            pointHoverBackgroundColor: "pink",
            pointHoverBorderColor: "rgba(59, 89, 152, 1)",
            data: amount_of_data,
          },
        ],
        options: {
          maintainAspectRatio: false,
          animation: false,
          legend: {
            display: true,
          },
          scales: {
            xAxes: [
              {
                type: "time",
                time: {
                  unit: "day",
                },
                ticks: {
                  autoSkip: false,
                },
              },
            ],
            yAxes: [
              {
                ticks: {
                  stepSize: 1,
                  autoSkip: false,
                },
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
};
