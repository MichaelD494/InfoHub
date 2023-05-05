<template>
    <div class="card weather">
        <div class="header">
            <h2>Weather</h2>
        </div>
        <div class="body">
            <div class="city">
                <span>sky is clear</span>
                <h3>New York</h3>
                <i class="wi wi-day-sunny-overcast"></i>
            </div>
            <ul class="row days list-unstyled m-b-0">
                <li>
                    <h5>SUN</h5>
                    <i class="wi wi-rain"></i>
                    <span class="degrees">77</span>
                </li>
                <li>
                    <h5>MON</h5>
                    <i class="wi wi-cloudy"></i>
                    <span class="degrees">81</span>
                </li>
                <li>
                    <h5>TUE</h5>
                    <i class="wi wi-rain-wind"></i>
                    <span class="degrees">82</span>
                </li>
                <li>
                    <h5>WED</h5>
                    <i class="wi wi-lightning"></i>
                    <span class="degrees">82</span>
                </li>
                <li>
                    <h5>THU</h5>
                    <i class="wi wi-day-cloudy-gusts"></i>
                    <span class="degrees">81</span>
                </li>
                <li>
                    <h5>FRI</h5>
                    <i class="wi wi-day-showers"></i>
                    <span class="degrees">67</span>
                </li>
                <li>
                    <h5>SAT</h5>
                    <i class="wi wi-day-snow"></i>
                    <span class="degrees">81</span>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    name:'Weather4'
}
</script>
<style scoped>

</style>