<template>
    <div class="card">
        <div class="header">
            <h2>DS - Design Team <small>Ranking 2th</small></h2>                        
            <card-actions></card-actions>
        </div>
        <div class="body">
            <h6 class="m-b-15">Info about Design Team <span class="badge badge-success float-right">New</span></h6>                                
            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
            <ul class="list-unstyled team-info m-t-20">
                <li class="m-r-15"><small class="text-muted">Team</small></li>
                <li><img src="./../../assets/xs/avatar1.jpg" title="Avatar" alt="Avatar"></li>
                <li><img src="./../../assets/xs/avatar2.jpg" title="Avatar" alt="Avatar"></li>
                <li><img src="./../../assets/xs/avatar3.jpg" title="Avatar" alt="Avatar"></li>
                <li><img src="./../../assets/xs/avatar4.jpg" title="Avatar" alt="Avatar"></li>
                <li><img src="./../../assets/xs/avatar5.jpg" title="Avatar" alt="Avatar"></li>
            </ul>
            <div class="progress progress-xs progress-transparent custom-color-blue">
                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 87%;">
                    <span class="sr-only">60% Complete</span>
                </div>
            </div>
            <div class="row">
                <div class="col-7">
                    <small>PROJECTS: 12</small>
                    <h6>BUDGET: 4,870 USD</h6>
                </div>
                <div class="col-5">
                    <bar-chart :baroptions="teamBar"></bar-chart>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import CardActions from '@/components/core/CardActions.vue'
import MiniBarChart from '@/components/core/MiniBarChart.vue'

export default {
    name: 'DesignTeam',
    components: {
        'card-actions': CardActions,
        'bar-chart': MiniBarChart,
    },data() {
        return {
            teamBar:{
                tooltip : {
                    trigger: 'item',
                    formatter:function(params){
                        var param = params;
                    return param.marker+" "+param.value;
                    }
                },
                grid: {
                    y: 0,
                    y2: 0
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
                        data: [2,5,8,3,5,7,1,6],
                        itemStyle: {
                            color: '#7460ee'
                        },
                        barWidth: '2px'
                    }
                ]     
            },
        }
    }
}
</script>
<style scoped>

</style>