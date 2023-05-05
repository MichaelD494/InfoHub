<template>
     <div class="card">
        <div class="header">
            <h2>Total Revenue</h2>
            <card-actions></card-actions>
        </div>
        <div class="body text-center">
            <h4 class="margin-0">Total Sale</h4>
            <h6 class="m-b-0">2,45,124</h6>
            <chart :options="doughnutoptions" class="revenueDoughnut mr-auto ml-auto" autoresize></chart>
            <chart :options="baroptions" class="revenueBar" autoresize></chart>
            <h6 class="m-b-0">Weekly Earnings</h6>
        </div>
    </div>
</template>
<script>
import CardActions from '@/components/core/CardActions.vue'
export default {
    name: 'AnaliticalRevenue',
     components: {
        'card-actions': CardActions,
    },
    props: {
        doughnutoptions: Object,
        baroptions:Object,
    },
}
</script>
<style scoped>
.revenueBar{
    width: 100%;
    height: 80px;
}
.revenueDoughnut{
    width: 100%;
    height: 150px;
}
</style>