<template>
  <div class="container">
    <div class="row justify-content-center">
      <pie-chart v-if="loaded" :data="chartData" :options="chartOptions"/>
    </div>
  </div>
</template>

<script>
import PieChart from "../pie-chart.js";
import { Pie } from "vue-chartjs";
import * as moment from "moment";

export default {
  components: {
    PieChart
  },

  data() {
    return {
      applicants: [],
      filteredApplicants: [],
      chartData: null,
      chartOptions: {
        responsive: true,
        maintainAspectRatio: false
      },
      loaded: false
    };
  },

  mounted() {
    this.loaded = false;
    this.axios.get("/api/v1/applicants").then(res => {
      this.applicants = res.data;
      this.setChartData();
      this.loaded = true;
    });
  },
  methods: {
    getRangeData(range = "thisweek") {
      let startDate, endDate;
      switch (range) {
        case "thisweek":
          startDate = moment().startOf("isoWeek");
          endDate = moment().endOf("isoWeek");
          break;
        case "lastweek":
          startDate = moment()
            .startOf("isoWeek")
            .subtract(7, "days");
          endDate = moment()
            .endOf("isoWeek")
            .subtract(7, "days");
          break;
        case "thismonth":
          startDate = moment().startOf("month");
          endDate = moment().endOf("month");
          break;
        default:
          startDate = moment().startOf("isoWeek");
          endDate = moment().endOf("isoWeek");
      }

      const filteredApplicants = _.filter(this.applicants, applicant => {
        const lastApplication = moment(applicant.lastApplication);
        return lastApplication.isBetween(startDate, endDate, "days", "[]");
      });

      const groupedApplicants = _.groupBy(filteredApplicants, "isHired");

      const transformToChartData = _.map(groupedApplicants, applicants => {
        return applicants.length;
      });

      console.log(transformToChartData, range);

      return transformToChartData;
    },

    setChartData() {
      this.chartData = {
        labels: ["Rejected", "Hired"],
        datasets: [
          {
            label: "This week",
            data: this.getRangeData("thisweek"),
            backgroundColor: ["#ff6384", "#36a2eb"],
            datalabels: {
              color: "#343a40",
              formatter: function(value, context) {
                const noun = context.dataIndex == 0 ? "Rejected" : "Hired";
                return `${noun} this week: ${value}`;
              }
            }
          },
          {
            label: "Last week",
            data: this.getRangeData("lastweek"),
            backgroundColor: ["#ff6384", "#36a2eb"],
            datalabels: {
              color: "#343a40",
              formatter: function(value, context) {
                const noun = context.dataIndex == 0 ? "Rejected" : "Hired";
                return `${noun} last week: ${value}`;
              }
            }
          },
          {
            label: "This month",
            data: this.getRangeData("thismonth"),
            backgroundColor: ["#ff6384", "#36a2eb"],
            datalabels: {
              color: "#343a40",
              formatter: function(value, context) {
                const noun = context.dataIndex == 0 ? "Rejected" : "Hired";
                return `${noun} this month: ${value}`;
              }
            }
          }
        ]
      };
    }
  }
};
</script>
