<template>
     <div class="col-5">
        <chart :options="baroptions" class="teambar text-right m-t-10" autoresize></chart>
    </div>
</template>
<script>
export default {
    name:'MiniBarChart',
    props:{
        baroptions:Object
    }
}
</script>
<style scoped>
.teambar{
   display: inline-block;
    width: 45px;
    height: 26px;
    vertical-align: top;
    left: 60px;
}
</style>