<template>
     <div class="card">
        <div class="header">
            <h2>Weekly Use</h2>
             <onoffcard-actions></onoffcard-actions>
        </div>
        <div class="body">
            <chart :options="options" class="graph"  id="chart-top-products"></chart>
        </div>
    </div>
</template>
<script>
import OnOffCardActions from '@/components/core/OnOffCardActions.vue'
export default {
    name: 'AnalyticalTopproducts',
     components: {
        'onoffcard-actions': OnOffCardActions,
    },
    props: {
        options: Object,
    },
}
</script>
<style scoped>
.graph{
    height:342px;
    width: 813px;
}
</style>