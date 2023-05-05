<template>
     <div class="card overflowhidden number-chart">
        <div class="body">
            <div class="number">
                <h6>{{title}}</h6>
                <span>{{value}}</span>
            </div>
            <small class="text-muted">{{details}}</small>
        </div>
        <chart :options="options" v-bind:class="class_nm" autoresize></chart>
    </div>
</template>
<script>
export default {
  name: 'AnalyticalData',
  // To use props, they must be declared
  props: {
    title: [String,Object],
    value:[String,Object],
    details: [String,Object],
    class_nm: [String,Object],
    options: Object,
  }
}
</script>
<style scoped>
.esvl{
    width:100%;
    height: 50px;
}
.sparkline{
    width:100%;
    height: 50px;
}
</style>