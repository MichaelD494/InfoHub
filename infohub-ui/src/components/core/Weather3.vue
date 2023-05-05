<template>
     <div class="card weather3">
        <div class="top">
            <div class="wrapper">
                <h2 class="heading">Clear night</h2>
                <h3 class="location">New York, USA</h3>
                <p class="temp">
                    <span class="temp-value">23</span>
                    <span class="deg">0</span>
                    <a href="javascript:void(0);"><span class="temp-type">C</span></a>
                </p>
            </div>
        </div>
        <div class="bottom">
            <ul class="forecast">
                <li class="active">
                    <span class="date">Yesterday</span>
                    <span class="wi wi-day-hail condition">
                        <span class="temp">23<span class="deg">0</span><span class="temp-type">C</span></span>
                    </span>
                </li>
                <li>
                    <span class="date">Tomorrow</span>
                    <span class="wi wi-day-hail condition">
                        <span class="temp">21<span class="deg">0</span><span class="temp-type">C</span></span>
                    </span>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    name:'Weather3'
}
</script>
<style scoped>

</style>