<template>
    <div class="card">
        <div class="body">
            <div class="clearfix">
                <div class="float-left">
                    <h6 class="mb-0">{{ title }}</h6>
                    <small class="text-danger" :class="!status ? 'd-none' : ''">{{ onMessage }}</small>
                    <small class="text-success" :class="status ? 'd-none' : ''">{{ offMessage }}</small>
                </div>
                <div class="float-right">
                    <button class="btn btn-outline-success" type="button"  :class="!status ? 'd-none' : ''"  @click="status = !status">{{ offButton }}</button>
                    <button class="btn btn-outline-danger" type="button"  :class="status ? 'd-none' : ''"  @click="status = !status">{{ onButton }}</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name:"SecuritySystem",
    props:{
        title: [String,Object],
       // status: [Boolean],
        onMessage: [String,Object],
        offMessage: [String,Object],
        offButton: [String,Object],
        onButton: [String,Object],
    },data() {
        return {
            status: this.status,
        }
    },
}
</script>
<style scoped>

</style>