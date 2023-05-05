<template>
    <div class="card appliances-grp ng-star-inserted">
        <div class="body clearfix">
            <div class="icon"><img alt="" :src="img_src"></div>
            <div class="content">
                <h6>{{title}}<span class="text-success">{{onButton}}</span></h6>
                <p v-for="details in sub_details" :key="details.title" class="ng-star-inserted">{{details.title}}<span :class="details.statusClass">{{details.status}} </span></p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name:"ApplianceStatusWidget",
    props:{
        title: [String,Object],
        img_src: String,
        onButton: [String,Object],
        sub_details:Array,
    }
}
</script>
<style scoped>

</style>