<template>
    <div>
        <div class="body">
            <div class="img-post">
                <img class="d-block img-fluid" :src="img_src" alt="First slide">
            </div>
            <h3> <router-link to="/blogs/blog-details">{{ title }}</router-link></h3>
            <p>{{ title_details }}</p>
        </div>
        <div class="footer">
            <div class="actions">
                <a href="javascript:void(0);" class="btn btn-outline-secondary">{{ btn_contain }}</a>
            </div>
            <ul class="stats">
                <li v-for="status in sub_details" :key="status.sub_title"><a :href="`${status.url}`">{{status.sub_title}}</a></li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    name:'BlogLists',
    props:{
        title: [String,Object],
        img_src: String,
        title_details: [String,Object],
        btn_contain: [String,Object],
        sub_details:Array,
    }
}
</script>
<style scoped>

</style>