<template>
     <div class="card">
        <div class="header">
            <h2>Day/Night Use</h2>
             <onoffcard-actions></onoffcard-actions>
        </div>
        <div class="body">
            <chart :options="options" class="donut_chart" id="chart-top-products"></chart>
        </div>
    </div>
</template>
<script>
import OnOffCardActions from '@/components/core/OnOffCardActions.vue'
export default {
    name: 'IotPieChart',
     components: {
        'onoffcard-actions': OnOffCardActions,
    },
    props: {
        options: Object,
    },
}
</script>
<style scoped>
.donut_chart{
    height:342px;
    width: 372px;
}
</style>