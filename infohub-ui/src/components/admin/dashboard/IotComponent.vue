<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                 <bread-crumb></bread-crumb>
            </div>

            <div class="row clearfix">
                <div v-for="basicLine in iotLineChartDetails" :key="basicLine.title"  class="col-lg-4 col-md-4 col-md-12">
                    <analitical-data
                        :title = "basicLine.title"
                        :value = "basicLine.value"
                        :details = "basicLine.details"
                        :class_nm = "basicLine.class_nm"
                        :options= basicLine.options
                    ></analitical-data>
                </div>
            </div>

            <div class="row clearfix">
                <div v-for="system in systemToggle" :key="system.title" class="col-lg-6 col-md-6 col-md-12">
                    <system-widget
                        :title = "system.title"
                        :status = "system.status"
                        :onMessage = "system.onMessage"
                        :offMessage = "system.offMessage"
                        :offButton = "system.offButton"
                        :onButton = "system.onButton"
                    ></system-widget>
                </div>
            </div>

            <div class="row clearfix">
                <div v-for="appliances in appliancStatusWidget" :key="appliances.title" class="col-lg-4 col-md-4 col-sm-12">
                    <appliance-status-widget
                        :title="appliances.title"
                        :img_src="appliances.img_src"
                        :onButton="appliances.onButton"
                        :sub_details="appliances.details"
                    ></appliance-status-widget>
                </div>
            </div>

            <div class="row clearfix">
                <div v-for="lightsdetail in lightsIndoorDetail" :key="lightsdetail.title" class="col-lg-4 col-md-4 col-sm-12">
                    <appliances-widget  
                        :title = "lightsdetail.title"
                        :sub_details="lightsdetail.details"
                    ></appliances-widget>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import BreadCrumb from '@/components/BreadCrumb'
import AnalyticalData from '@/components/core/AnalyticalData.vue'
// import IotWeeklyBarChart from '@/components/core/IotWeeklyBarChart.vue'
// import IotPieChart from '@/components/core/IotPieChart.vue'
import Applianceswidget from '@/components/core/Applianceswidget.vue'
import SecuritySystem from '@/components/core/SecuritySystem.vue'
import ApplianceStatusWidget from '@/components/core/ApplianceStatusWidget.vue'

export default {
    name: 'IotComponent',
    components: {
        BreadCrumb,
        'analitical-data': AnalyticalData,
        // 'iotbar-data':IotWeeklyBarChart,
        // 'iotpie-data':IotPieChart,
        'appliances-widget':Applianceswidget,
        'system-widget':SecuritySystem,
        'appliance-status-widget':ApplianceStatusWidget
    },
    methods:{
        energyOptionsSeries() {
            return this.data = [500, 225, 476, 267, 190, 250]
        },
        LightsSeries() {
            return this.data = [4, 6, 7, 5, 3, 6]
        },
        TempratureSeries() {
            return this.data = [10, 18, 14, 15, 25, 20]
        },
    },data(){
        return {
            weeklyBarChart: {
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: {
                    type: 'category',
                
                    axisLine: {
                        show: false
                    },
                    data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri','Sat','Sun']
                },
                yAxis: {
                    type: "value",
                    gridLineColor: 'transparent',
                    axisLabel: {
                        formatter: function (value) {
                            return Math.abs(value) > 999 ? Math.sign(value)*((Math.abs(value)/1000).toFixed(1)) + 'k' : Math.sign(value)*Math.abs(value)
                        }
                    }
                },
                series: [
                    {
                        type: 'bar',
                        itemStyle: {
                        color: 'rgb(176, 221, 145)'
                        },
                        barGap: '10%',
                        data: [200230, 180230, 150230, 150230, 200230, 400230,500230]
                    },
                    {
                        type: 'bar',
                        itemStyle: {
                        color: 'rgb(247, 187, 199)'
                        },
                    data: [500230, 400230, 400230, 550230, 630230, 630230,630230]
                    }
                ]
            },
            dayNightPiechart: {
                grid: {
                    left: '0',
                    top: '0'
                },
                series: [
                    {
                        name: 'Day/Night',
                        type: 'pie',
                        radius: ['45%', '70%'],
                        avoidLabelOverlap: false,
                        label: {
                            show: false,
                            position: 'center'
                        },
                        emphasis: {
                            label: {
                                show: true,
                                fontSize: '20',
                                fontWeight: 'bold'
                            }
                        },
                        labelLine: {
                            show: false
                        },
                        data: [
                            {value: 70, name: 'Night 70%',itemStyle: { color: 'rgb(247, 187, 199)' }},
                            {value: 30, name: 'Day 30%',itemStyle: { color: 'rgb(176, 221, 145)' }},
                        ]
                    }
                ]
            },
            iotLineChartDetails:
            [
                {
                    title:"ENERGY USE",
                    value:"250 kw/h",
                    details:"89% compared to average monthly use",
                    class_nm:"sparkline",
                    options: {
                        grid: {
                            left: 0,
                            top: 0,
                            right: 0,
                            bottom: 0
                        },
                        tooltip : {
                            trigger: 'item',
                            formatter:function(params){
                                var param = params;
                                return param.marker+" "+param.value;
                            }
                        },
                        xAxis: {
                            type: 'category',
                            show: false,
                            data: this.energyOptionsSeries(),
                            boundaryGap: false,
                        },
                        yAxis: {
                            type: 'value',
                            show:false,
                        },
                        series: [{
                            type: 'line',
                            data: this.energyOptionsSeries(),
                            symbolSize: 1,
                            showSymbol: true,
                            areaStyle: {
                                color: "#fac091"
                            },
                            lineStyle: {
                                width: 1,
                            },
                            color: "#f79647"
                        }],
                    },
                },
                {
                    title:"LIGHTS",
                    value:"6 Lights are ON",
                    details:"5% less than daily average",
                    class_nm:"sparkline",
                    options:{
                        grid: {
                            left: 0,
                            top: 0,
                            right: 0,
                            bottom: 0
                        },
                        tooltip : {
                            trigger: 'item',
                            formatter:function(params){
                                var param = params;
                                return param.marker+" "+param.value;
                            }
                        },
                        xAxis: {
                            type: 'category',
                            show: false,
                            data: this.LightsSeries(),
                            boundaryGap: false,
                        },
                        yAxis: {
                            type: 'value',
                            show:false,
                        },
                        series: [{
                            type: 'line',
                            data: this. LightsSeries(),
                            symbolSize: 1,
                            showSymbol: true,
                            areaStyle: {
                                color: "#a092b0"
                            },
                            lineStyle: {
                                width: 1,
                            },
                            color: "#604a7b"
                        }],
                    },
                },
                {
                    title:"DAILY AVG TEMPRATURE",
                    value:"20° C",
                    details:"Outside Avg temprature is 32° C",
                    class_nm:"sparkline",
                    options:{
                        grid: {
                            left: 0,
                            top: 0,
                            right: 0,
                            bottom: 0
                        },
                        tooltip : {
                            trigger: 'item',
                            formatter:function(params){
                                var param = params;
                                return param.marker+" "+param.value;
                            }
                        },
                        xAxis: {
                            type: 'category',
                            show: false,
                            data: this.TempratureSeries(),
                            boundaryGap: false,
                        },
                        yAxis: {
                            type: 'value',
                            show:false,
                        },
                        series: [{
                            type: 'line',
                            data: this.TempratureSeries(),
                            symbolSize: 1,
                            showSymbol: true,
                            areaStyle: {
                                 color: "#92cddc"
                            },
                            lineStyle: {
                                width: 1,
                            },
                            color: "#4aacc5"
                        }],
                    }
                },
            ],
            systemToggle:
            [
                {
                    title:"Security System",
                    onMessage:"Triggered",
                    offMessage:"Loosed",
                    onButton:"Trigger",
                    offButton:"Loose",
                    status:false
                },
                {
                    title:"Main Gate",
                    onMessage:"Closed",
                    offMessage:"Opened",
                    onButton:"Close",
                    offButton:"Open",
                    status:false
                },
            ],
            appliancStatusWidget:
            [
                {
                    img_src: require(`./../../../assets/air-conditioner.png`),
                    title:"Air Conditioner",
                    onButton:"On",
                    details:[
                        {
                            title:"Temprature",
                            status:"25° C",
                            statusClass: "text-warning"
                        },
                        {
                            title: "Status",
                            status: "Cooling On",
                            statusClass: "text-warning"
                        }
                    ]
                },
                {
                    img_src: require(`./../../../assets/fridge.png`),
                    title:"Fridge",
                    onButton:"On",
                    details: [
                        {
                            title: "Temprature",
                            status: "10° C",
                            statusClass: "text-primary"
                        },
                        {
                            title: "Status",
                            status: "Stand By",
                            statusClass: "text-success"
                        }
                    ]
                },
                {
                    img_src: require(`./../../../assets/washing-machine.png`),
                    title:"Washing Machine",
                    onButton:"On",
                    details: [
                    {
                        title: "Remaining Time",
                        status: "01:23:21",
                        statusClass: "text-primary"
                    }
                ]
                },
                
            ],
            lightsIndoorDetail:[
                {
                    title:"Lights Indoor",
                    details: [
                        {
                            sub_title:"Kitchen",
                            status:false
                        },
                        {
                            sub_title: "Dining Room",
                            status: true
                        },
                        {
                            sub_title: "Living Room",
                            status: true
                        },
                        {
                            sub_title: "Bed Room",
                            status: false,
                            error:true,
                            errorMessage:"Not Connected"
                        },
                        {
                            sub_title: "Bath Room",
                            status: true
                        },
                        {
                            sub_title: "Store Room",
                            status: false
                        }
                    ]
                },
                {
                    title:"Lights Outdoor",
                    details: [
                        {
                            sub_title: "Front Door",
                            status: true
                        },
                        {
                            sub_title: "Back Door",
                            status: false
                        },
                        {
                            sub_title: "Pool",
                            status: true
                        },
                        {
                            sub_title: "Garage",
                            status: false
                        },
                        {
                            sub_title: "Garden",
                            status: true,
                            error: true,
                            errorMessage: "Fused"
                        },
                        {
                            sub_title: "Main Door",
                            status: true
                        }
                    ]
                },
                {
                    title:"Other Appliences",
                    details: [
                        {
                            sub_title: "Tv",
                            status: true
                        },
                        {
                            sub_title: "Apple Tv",
                            status: false
                        },
                        {
                            sub_title: "Sound Ststem",
                            status: false
                        },
                        {
                            sub_title: "Air Conditioner",
                            status: true
                        },
                        {
                            sub_title: "Fridge",
                            status: true
                        },
                        {
                            sub_title: "Washing Machine",
                            status: true
                        }
                    ]
                }
            ]
            }
    },directives: {
        'click-outside': {
            bind: function(el, binding) {
                // Define Handler and cache it on the element
                const bubble = binding.modifiers.bubble
                const handler = (e) => {
                if (bubble || (!el.contains(e.target) && el !== e.target)) {
                    binding.value(e)
                }
                }
                el.__vueClickOutside__ = handler

                // add Event Listeners
                document.addEventListener('click', handler)
            },
        }
    }
}
</script>
<style scoped>

</style>