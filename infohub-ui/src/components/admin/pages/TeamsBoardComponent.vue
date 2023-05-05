<template>
     <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
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
                                <li><img src="../../../assets/xs/avatar1.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar2.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar3.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar4.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar5.jpg" title="Avatar" alt="Avatar"></li>
                            </ul>
                            <div class="progress progress-xs progress-transparent custom-color-blue">
                                <div class="progress-bar"  style="width: 87%;"></div>
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
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>MT - Marketing Team <small>Ranking 4th</small></h2>                        
                            <card-actions></card-actions>
                        </div>
                        <div class="body">
                            <h6 class="m-b-15">Info about Marketing Team</h6>
                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            <ul class="list-unstyled team-info m-t-20">
                                <li class="m-r-15"><small class="text-muted">Team</small></li>
                                <li><img src="../../../assets/xs/avatar10.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar9.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar8.jpg" title="Avatar" alt="Avatar"></li>
                            </ul>
                            <div class="progress progress-xs progress-transparent custom-color-purple">
                                <div class="progress-bar" style="width: 34%;"></div>
                            </div>                       
                            <div class="row">
                                <div class="col-7">
                                    <small>PROJECTS: 08</small>
                                    <h6>BUDGET: 2,170 USD</h6>
                                </div>
                                <div class="col-5">
                                    <bar-chart :baroptions="MarketingTeamBar"></bar-chart>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>DT - Developers Team <small>Ranking 5th</small></h2>                        
                            <card-actions></card-actions>
                        </div>
                        <div class="body">
                            <h6 class="m-b-15">Info about Developers Team</h6>
                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            <ul class="list-unstyled team-info m-t-20">
                                <li class="m-r-15"><small class="text-muted">Team</small></li>
                                <li><img src="../../../assets/xs/avatar1.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar2.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar3.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar4.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar5.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar6.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar7.jpg" title="Avatar" alt="Avatar"></li>
                            </ul>
                            <div class="progress progress-xs progress-transparent custom-color-yellow">
                                <div class="progress-bar" style="width: 54%;"></div>
                            </div>
                            <div class="row">
                                <div class="col-7">
                                    <small>PROJECTS: 23</small>
                                    <h6>BUDGET: 8,000 USD</h6>
                                </div>
                                <div class="col-5">
                                     <bar-chart :baroptions="DevelopersTeamBar"></bar-chart>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>GT - Graphic Team <small>Ranking 2th</small></h2>                        
                            <card-actions></card-actions>
                        </div>
                        <div class="body">
                            <h6 class="m-b-15">Info about Graphic Team</h6>                                
                            <p>There are many variations of passages of Lorem Ipsum available, but the have suffered alteration in some form.</p>
                            <ul class="list-unstyled team-info m-t-20">
                                <li class="m-r-15"><small class="text-muted">Team</small></li>
                                <li><img src="../../../assets/xs/avatar4.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar5.jpg" title="Avatar" alt="Avatar"></li>
                            </ul>
                            <div class="progress progress-xs progress-transparent custom-color-green">
                                <div class="progress-bar"  style="width: 67%;"></div>
                            </div>
                            <div class="row">
                                <div class="col-7">
                                    <small>PROJECTS: 2</small>
                                    <h6>BUDGET: 3,370 USD</h6>
                                </div>
                                <div class="col-5">
                                     <bar-chart :baroptions="GraphicTeamBar"></bar-chart>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>ST - Sales Team <small>Ranking 7th</small></h2>                        
                            <card-actions></card-actions>
                        </div>
                        <div class="body">
                            <h6 class="m-b-15">Info about Sales Team</h6>
                            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature.</p>
                            <ul class="list-unstyled team-info m-t-20">
                                <li class="m-r-15"><small class="text-muted">Team</small></li>
                                <li><img src="../../../assets/xs/avatar5.jpg" title="Avatar" alt="Avatar"></li>                            
                                <li><img src="../../../assets/xs/avatar1.jpg" title="Avatar" alt="Avatar"></li>
                            </ul>
                            <div class="progress progress-xs progress-transparent custom-color-blue">
                                <div class="progress-bar" style="width: 87%;"></div>
                            </div>
                            <div class="row">
                                <div class="col-7">
                                    <small>PROJECTS: 12</small>
                                    <h6>BUDGET: 5,100 USD</h6>
                                </div>
                                <div class="col-5">
                                    <bar-chart :baroptions="SalesTeamBar"></bar-chart>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>BD - Business Development <small>Ranking 8th</small></h2>                        
                            <card-actions></card-actions>
                        </div>
                        <div class="body">
                            <h6 class="m-b-15">Info about Business Development Team</h6>
                            <p>Lorem Ipsum is simply dummy text of the printing and industry. Lorem Ipsum has been the industry's standard.</p>
                            <ul class="list-unstyled team-info m-t-20">
                                <li class="m-r-15"><small class="text-muted">Team</small></li>                            
                                <li><img src="../../../assets/xs/avatar2.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar3.jpg" title="Avatar" alt="Avatar"></li>                            
                                <li><img src="../../../assets/xs/avatar5.jpg" title="Avatar" alt="Avatar"></li>                            
                                <li><img src="../../../assets/xs/avatar7.jpg" title="Avatar" alt="Avatar"></li>
                            </ul>
                            <div class="progress progress-xs progress-transparent custom-color-blue">
                                <div class="progress-bar" style="width: 87%;"></div>
                            </div>
                            <div class="row">
                                <div class="col-7">
                                    <small>PROJECTS: 23</small>
                                    <h6>BUDGET: 11,000 USD</h6>
                                </div>
                                <div class="col-5">
                                    <bar-chart :baroptions="BusinessTeamBar"></bar-chart>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import BreadCrumb from '@/components/BreadCrumb'
import CardActions from '@/components/core/CardActions.vue'
import MiniBarChart from '@/components/core/MiniBarChart.vue'

export default {
    name:'TeamsBoardComponent',
    components: {
        BreadCrumb,
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
            MarketingTeamBar:{
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
                        data: [6,2,3,4,8,7,6,2],
                        itemStyle: {
                            color: '#f96332'
                        },
                        barWidth: '2px'
                    }
                ]     
            },
            DevelopersTeamBar:{
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
                        data: [8,2,3,4,6,5,2,7],
                        itemStyle: {
                            color: '#2CA8FF'
                        },
                        barWidth: '2px'
                    }
                ]     
            },
            GraphicTeamBar:{
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
                            color: '#ea4c89'
                        },
                        barWidth: '2px'
                    }
                ]     
            },
            SalesTeamBar:{
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
                        data: [6,3,1,5,8,7,3,4],
                        itemStyle: {
                            color: '#026466'
                        },
                        barWidth: '2px'
                    }
                ]     
            },
            BusinessTeamBar:{
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
                        data: [6,2,3,4,8,7,6,2],
                        itemStyle: {
                            color: '#f96332'
                        },
                        barWidth: '2px'
                    }
                ]     
            },
        }
    }
}
</script>
<style>

</style>