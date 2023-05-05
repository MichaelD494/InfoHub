<template>
    <div class="card weather2">
        <div class="body city-selected">
            <div class="row">
                <div class="col-12">
                    <div class="city"><span>City:</span> San Francisco</div>
                    <div class="night">Day - 12:07 PM</div>
                </div>
                <div class="info col-7">
                    <div class="temp">
                        <h2>34°</h2>
                    </div>
                </div>
                <div class="icon col-5">
                    <i class="wi wi-day-cloudy-windy"></i>
                </div>
            </div>
        </div>
        <table class="table table-striped m-b-0">
            <tbody>
                <tr>
                    <td>Land area</td>
                    <td class="font-medium">121.4 km²</td>
                </tr>
                <tr>
                    <td>Humidity</td>
                    <td class="font-medium">73%</td>
                </tr>
                <tr>
                    <td>Pressure</td>
                    <td class="font-medium">25.56 in</td>
                </tr>
                <tr>
                    <td>Population</td>
                    <td class="font-medium">8.65 lakhs</td>
                </tr>
                <tr>
                    <td>Ceiling</td>
                    <td class="font-medium">25280 ft</td>
                </tr>
            </tbody>
        </table>
        <carousel :autoplay="true" :per-page="1" :loop="true" :mouse-drag="true" :paginationEnabled="false">
            <slide>
                <div class="col-12">
                    <ul class="row days-list list-unstyled">
                        <li class="day col-4">
                            <p>Monday</p>
                            <i class="wi wi-day-hail"></i>
                        </li>
                        <li class="day col-4">
                            <p>Tuesday</p>
                            <i class="wi wi-day-lightning"></i>
                        </li>
                        <li class="day col-4">
                            <p>Wednesday</p>
                            <i class="wi wi-day-storm-showers"></i>
                        </li>
                    </ul>
                </div>
            </slide>
            <slide>
                <div class="col-12">
                    <ul class="row days-list list-unstyled">
                        <li class="day col-4">
                            <p>Thursday</p>
                            <i class="wi wi-day-hail"></i>
                        </li>
                        <li class="day col-4">
                            <p>Friday</p>
                            <i class="wi wi-showers"></i>
                        </li>
                        <li class="day col-4">
                            <p>Saturday</p>
                            <i class="wi wi-day-sunny"></i>
                        </li>
                    </ul>
                </div>
            </slide>
        </carousel>
    </div>
</template>
<script>
export default {
    name:'Weather1'
}
</script>
<style scoped>

</style>