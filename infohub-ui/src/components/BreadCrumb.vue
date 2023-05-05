<template>
     <div class="row">
        <div class="col-lg-5 col-md-8 col-sm-12">                        
            <h2><a href="javascript:void(0);" class="btn btn-xs btn-link btn-toggle-fullwidth"><i v-bind:class="{ 'fa fa-arrow-right': show, 'fa fa-arrow-left': !show }" class="fa fa-arrow-left" v-on:click="layoutFullwidth()"></i></a> {{meta}}</h2>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><router-link to="/dashboard/index"><i class="icon-home"></i></router-link></li>                            
                <li class="breadcrumb-item" v-for="item in crumbs" :key="item.id">{{ item.text }}</li>
            </ul>
        </div>            
        <div class="col-lg-7 col-md-4 col-sm-12 text-right">
                <div class="inlineblock text-center m-r-15 m-l-15 hidden-sm pt-2" >
                <chart :options="visitors" class="echart-line-chart"></chart>
                <span>Visitors</span>
            </div>
            <div class="inlineblock text-center m-r-15 m-l-15 hidden-sm pt-2">
                <chart :options="visit" class="echart-line-chart"></chart>
                <span>visits</span>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  computed: {
    crumbs: function() {
      let pathArray = this.$route.path.split("/")
      pathArray.shift()
      let breadcrumbs = pathArray.reduce((breadcrumbArray, path, idx) => {
        breadcrumbArray.push({
        path: path,
          to: breadcrumbArray[idx - 1]
            ? "/" + breadcrumbArray[idx - 1].path + "/" + path
            : "/" + path,
          text: this.$route.matched[idx].meta.breadCrumb || path,
        });
        return breadcrumbArray;
      }, [])
      return breadcrumbs;
    }
  },methods:{
        layoutFullwidth(){
            this.show = !this.show;
            let sitebody = document.body;
            this.show ? sitebody.classList.add("layout-fullwidth") : sitebody.classList.remove("layout-fullwidth");
        },
        visitorsOptionsSeries() {
            return this.data = [3,5,1,6,5,4,8,3]
        },
         visitOptionsSeries() {
            return this.data = [4,6,3,2,5]
        },
    }, data (){
        return {
            show:false,
            meta:'',
            visitors: {
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
                    boundaryGap: false,
                },
                yAxis : [
                    {
                        type : 'value',
                        show:false,
                    }
                ],
                series: [
                    {
                        type: 'line',
                        symbolSize: 1,
                        showSymbol: true,
                        data: this.visitorsOptionsSeries(),
                        lineStyle: {
                            width: 1,
                        },
                    }
                ],
                color: ["#00c5dc"]
            },
            visit: {
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
                    boundaryGap: false,
                },
                yAxis : [
                    {
                        type : 'value',
                        show:false,
                    }
                ],
                series: [
                    {
                        type: 'line',
                        symbolSize: 1,
                        showSymbol: true,
                        data: this.visitOptionsSeries(),
                        lineStyle: {
                            width: 1,
                        },
                    }
                ],
                color: ["#f4516c"]
            },
        }
    },created() {
        this.meta = this.$route.meta.title;
    }
};
</script>
<style scoped>
.echart-line-chart{
    height: 20px;
    width: 112px;
}
</style>