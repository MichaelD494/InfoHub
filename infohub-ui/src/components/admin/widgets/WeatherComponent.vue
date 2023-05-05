<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                 <bread-crumb></bread-crumb>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-12">
                    <weather-carousel></weather-carousel>
                </div>
                <div class="col-lg-4 col-md-6">
                    <weather-city></weather-city>
                </div>
                <div class="col-lg-4 col-md-6">
                    <weather-clear-night></weather-clear-night>
                </div>
                <div class="col-lg-6 col-md-12">
                   <weather-sky ></weather-sky>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import BreadCrumb from '@/components/BreadCrumb'
import Weather1 from '@/components/core/Weather1.vue'
import Weather2 from '@/components/core/Weather2.vue'
import Weather3 from '@/components/core/Weather3.vue'
import Weather4 from '@/components/core/Weather4.vue'

export default {
    name: 'WeatherComponent',
    components: {
        BreadCrumb,
        'weather-carousel': Weather1,
        'weather-city': Weather2,
        'weather-clear-night': Weather3,
        'weather-sky': Weather4,
    },data() {
        return {
           
        }
    },methods: {
      
    }
}
</script>
<style scoped>
</style>