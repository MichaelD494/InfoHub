<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                 <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div  v-for="basicLine in analiticalLineChartDetail" :key="basicLine.title" class="col-lg-3 col-md-6 col-sm-6">
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
                <div class="col-lg-6 col-md-12">
                    <top-products  :options="products"></top-products>
                </div>
                <div class="col-lg-3 col-md-6">
                    <referrals></referrals>
                </div>
                <div class="col-lg-3 col-md-6">
                    <total-revenue :doughnutoptions="revenueDoughnut" :baroptions="revenueBar"></total-revenue>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-4 col-md-12">
                    <analitical-chat></analitical-chat>
                </div>
                <div class="col-lg-8 col-md-12">
                    <analitical-managed :options="dataManagedBar"></analitical-managed>
                </div>                
            </div>
            <div class="row clearfix">
                <div class="col-lg-4 col-md-12">
                    <lucid-feed></lucid-feed>
                </div>
                <div class="col-lg-4 col-md-12">
                    <twitter-feed></twitter-feed>
                </div>
                <div class="col-lg-4 col-md-12">
                   <member-info></member-info>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12">
                    <lucid-activities></lucid-activities>  
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import BreadCrumb from '@/components/BreadCrumb'
import AnalyticalData from '@/components/core/AnalyticalData.vue'
import AnalyticalTopproducts from '@/components/core/AnalyticalTopproducts.vue'
import AnaliticalReferrals from '@/components/core/AnaliticalReferrals.vue'
import AnaliticalRevenue from '@/components/core/AnaliticalRevenue.vue'
import AnaliticalChat from '@/components/core/AnaliticalChat.vue'
import AnaliticalManaged from '@/components/core/AnaliticalManaged.vue'
import LucidFeeds from '@/components/core/LucidFeeds.vue'
import TwitterFeed from '@/components/core/TwitterFeed.vue'
import TeamLeader from '@/components/core/TeamLeader.vue'
import LucidActivities from '@/components/core/LucidActivities.vue'

export default {
    name: 'IndexComponent',
    components: {
        BreadCrumb,
        'analitical-data': AnalyticalData,
        'top-products': AnalyticalTopproducts,
        'referrals': AnaliticalReferrals,
        'total-revenue':AnaliticalRevenue,
        'analitical-chat':AnaliticalChat,
        'analitical-managed':AnaliticalManaged,
        'lucid-feed':LucidFeeds,
        'twitter-feed':TwitterFeed,
        'member-info':TeamLeader,
        'lucid-activities':LucidActivities
    },methods:{
        earningOptionsSeries() {
            return this.data = [1, 4, 1, 3, 7, 1]
        },
        salesOptionsSeries() {
            return this.data = [1, 4, 2, 3, 6, 2]
        },
        visitsAreaOptionsSeries() {
            return this.data = [1, 4, 2, 3, 1, 5]
        },
        LikesOptionsSeries() {
            return this.data = [1, 3, 5, 1, 4, 2];
        },
        earningOptions() {
            return this.data = '$22,500'
        },
    },
    data (){
        return{
            products:{
               tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                },
                legend: {
                    data: ['Mobile', 'Laptop', 'Computer'],
                    right: '4%',
                    textStyle: {
                        color: "#C2C2C2",
                    }
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: [
                    {
                        type: 'category',
                        data: ['Q1', 'Q2', 'Q3', 'Q4', 'Q5'],
                        axisLine: {
                            show: false
                        },
                        axisLabel: {
                            color: "#C2C2C2",
                        }
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        minInterval: 2500,
                        splitLine: {
                            lineStyle: {
                                type: 'dotted'
                            }
                        },
                        axisLine: {
                            show: false
                        },
                        axisLabel: {
                            formatter: function (value) {
                                if (value > 0) {
                                    return (value / 1000) + ' K';
                                } else {
                                    return 0;
                                }
                            },
                            color: "#C2C2C2",
                        }
                    }
                ],
                series: [
                    {
                        name: 'Mobile',
                        type: 'bar',
                        stack: 'Gedgets',
                        data: [2350, 3205, 4520, 2351, 5632],
                        itemStyle: {
                            color: "#6ebdd1"
                        },
                        barWidth: "40px"
                    },
                    {
                        name: 'Laptop',
                        type: 'bar',
                        stack: 'Gedgets',
                        data: [2341, 2583, 1592, 2674, 2323],
                        itemStyle: {
                            color: "#f9ab6c"
                        },
                        barWidth: "40px"
                    },
                    {
                        name: 'Computer',
                        type: 'bar',
                        stack: 'Gedgets',
                        data: [1212, 5214, 2325, 4235, 2519],
                        itemStyle: {
                            color: "#afc979"
                        },
                        barWidth: "40px"
                    }
                ]
            },
            revenueBar:{
                tooltip : {
                    trigger: 'item',
                    formatter:function(params){
                        var param = params;
                        return param.marker+" "+param.value;
                    }
                },
                grid: {
                    borderWidth: 0,
                    y: 80,
                    y2: 60
                },
                xAxis : [
                {
                    type : 'category',
                    show: false,
                }
                ],
                yAxis : [
                    {
                        type : 'value',
                        show: false
                    }
                ],
                series : [
                    {
                        
                        type: 'bar',
                        data: [2, 5, 4, 8, 3, 9, 1, 5],
                        itemStyle: {
                            color: '#7460ee'
                        },
                        barWidth: '10px'
                    }
                ]     
            },
            revenueDoughnut:{
                grid: {
                    left: '0',
                    top: '0'
                },
                tooltip : {
                    show: true,
                    formatter: function() {
                        return '<span style="display:inline-block;margin-right:5px;border-radius:10px;width:10px;height:10px;background-color:#212121;"></span>63';
                    }
                },
                title: {
                    text: '63',
                    x: 'center',
                    y: 'center',
                    textStyle : {
                        color : 'rgb(33, 33, 33)',
                        fontFamily : 'Arial',
                        fontSize : 20,
                        fontWeight : 'bolder'
                    }
                },
                series : [
                {
                    type: 'pie',
                    startAngle: 215,
                    //clockWise:1,
                    radius : [38, 50],
                    label: {
                        show: false,
                    },
                    data: [
                        {
                            value: 45,
                            itemStyle :  {
                                color: '#212121',
                                // emphasis: {
                                //     itemStyle: {
                                //         color: '#212121'
                                //     }
                                // }
                            }
                        },
                        {
                            value: 34,
                            itemStyle :  {
                                color: '#EEEEEE',
                                label: {show: false},
                                labelLine: {show: false},
                                tooltip: {show: false},
                                // emphasis: {
                                //     itemStyle: {
                                //         color: '#EEEEEE'
                                //     }
                                // }
                            }
                        },
                        {
                            value: 33,
                            itemStyle :  {
                                color: 'rgba(0,0,0,0)',
                                label: {show: false},
                                labelLine: {show: false},
                                tooltip: {show: false}
                            }
                        }
                    ]
                }]
            },
            dataManagedBar:{
                grid: {
                    borderWidth: 0,
                    y: 80,
                    y2: 60
                },
                tooltip : {
                    trigger: 'item',
                    formatter:function(params){
                        var param = params;
                    return param.marker+" "+param.value;
                    }
                },
                xAxis : [
                    {
                        type : 'category',
                        show: false,
                    }
                ],
                yAxis : [
                    {
                        type : 'value',
                        show: false
                    }
                ],
                series : [
                    {
                        
                        type: 'bar',
                        stack: 'Gedgets',
                        data: [2, 0, 5, 0, 4, 0, 8, 0, 3, 0, 9, 0, 1, 0, 5],
                        itemStyle: {
                            color: '#7460ee'
                        },
                        barWidth: '5px'
                    },
                    {
                        
                        type: 'bar',
                        stack: 'Gedgets',
                        data: [0, -5, 0, -1, 0, -9, 0, -3, 0, -8, 0, -4, 0, -5, 0],
                        itemStyle: {
                            color: '#afc979'
                        },
                        barWidth: '5px'
                    }
                ]
            },
            analiticalLineChartDetail:
            [
                {
                    title:"EARNINGS",
                    value: this.earningOptions(),
                    details:"19% compared to last week",
                    class_nm:"esvl",
                    options: {
                         xAxis: {
                            type: 'category',
                            show: false,
                            data: this.earningOptionsSeries(),
                            boundaryGap: false,
                        },
                        yAxis: {
                            type: 'value',
                            show:false,
                        },
                        tooltip : {
                            trigger: 'item',
                            formatter:function(params){
                                var param = params;
                                return param.marker+" "+param.value;
                            }
                        },
                        grid: {
                            left: '0%',
                            right: '0%',
                            bottom: '0%',
                            top: '0%',
                            containLabel: false
                        },
                        series: {
                            type: 'line',
                            data:  this.earningOptionsSeries(),
                            symbolSize: 1,
                            showSymbol: true,
                            areaStyle: {
                               color: "#fac091"
                            },
                            lineStyle: {
                                width: 1,
                            },
                            color: '#f79647'
                        },
                    },
                },
                {
                    title:"SALES",
                    value:"$500",
                    details:"19% compared to last week",
                    class_nm:"esvl",
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
                            data: this.salesOptionsSeries(),
                            boundaryGap: false,
                        },
                        yAxis: {
                            type: 'value',
                            show:false,
                        },
                        series: [{
                            type: 'line',
                            data: this.salesOptionsSeries(),
                            symbolSize: 1,
                            showSymbol: true,
                            areaStyle: {
                                color: "#a092b0"
                            },
                            lineStyle: {
                                width: 1,
                            },
                            color: '#604a7b'
                        }],
                    },
                },
                {
                    title:"VISITS",
                    value:"$21,215",
                    details:"19% compared to last week",
                    class_nm:"esvl",
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
                            data: this.visitsAreaOptionsSeries(),
                            boundaryGap: false,
                        },
                        yAxis: {
                            type: 'value',
                            show:false,
                        },
                        series: [{
                            data: this.visitsAreaOptionsSeries(),
                            type: 'line',
                            symbolSize: 1,
                            showSymbol: true,
                            areaStyle: {
                                color: "#b0dce6"
                            },
                            lineStyle: {
                                width: 1,
                            },
                            color: '#5fb9cd'
                        }],
                    },
                },
                {
                    title:"LIKES",
                    value:"$421,215",
                    details:"19% compared to last week",
                    class_nm:"esvl",
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
                            data: this.LikesOptionsSeries(),
                            boundaryGap: false,
                        },
                        yAxis: {
                            type: 'value',
                            show:false,
                        },
                        series: [{
                            data: this. LikesOptionsSeries(),
                            symbolSize: 1,
                            showSymbol: true,
                            type: 'line',
                            areaStyle: {
                                color: "#95b3d7"
                            },
                            lineStyle: {
                                width: 1,
                            },
                            color: '#4f81bc'
                        }],
                    },
                },
            ],
        }
    },created(){
         this.interval = setInterval(() => {
            // let earningrand = Math.floor(Math.random() * 11);
            // let salesrand = Math.floor(Math.random() * 11);
            // let visitsrand = Math.floor(Math.random() * 11);
            // let Likesrand = Math.floor(Math.random() * 11);
            // if (!earningrand || !salesrand || !visitsrand || !Likesrand){
            //     earningrand = 1;
            //     salesrand = 1;
            //     visitsrand = 1;
            //     Likesrand = 1;
            // }
            this.analiticalLineChartDetail[0].options.series.data.shift();
            this.analiticalLineChartDetail[0].options.series.data.push(Math.floor(Math.random() * 11));
            this.analiticalLineChartDetail[1].options.series[0].data.shift();
            this.analiticalLineChartDetail[1].options.series[0].data.push(Math.floor(Math.random() * 11));
            this.analiticalLineChartDetail[2].options.series[0].data.shift();
            this.analiticalLineChartDetail[2].options.series[0].data.push(Math.floor(Math.random() * 11));
            this.analiticalLineChartDetail[3].options.series[0].data.shift();
            this.analiticalLineChartDetail[3].options.series[0].data.push(Math.floor(Math.random() * 11));
        }, 2000);
    },beforeDestroy() {
        clearInterval(this.interval);
    }, mounted:function(){
            this.$toast.open({
                message: "Hello, welcome to Lucid, a unique<br> admin Template.",
                type: "info",
                duration: 3800,
                position: 'top-right',
                dismissible: true,
            })
    },
}
</script>
<style scoped>

</style>