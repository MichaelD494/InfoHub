<template>
     <div class="card">
        <div class="header">
            <h2>Top Products</h2>
            <card-actions></card-actions>
        </div>
        <div class="body">
            <chart :options="options" class="chartist"  id="chart-top-products" :autoresize="true"></chart>
        </div>
    </div>
</template>
<script>
import CardActions from '@/components/core/CardActions.vue'
export default {
    name: 'AnalyticalTopproducts',
     components: {
        'card-actions': CardActions,
    },
    props: {
        options: Object,
    },
}
</script>
<style scoped>
.chartist{
    width:100%;
    height: 292px;
}
</style>