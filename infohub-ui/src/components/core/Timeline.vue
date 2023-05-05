<template>
     <div class="card">
        <div class="header">
            <h2>Timeline</h2>
            <ul class="header-dropdown">
                <li class="remove">
                    <a role="button" class="boxs-close"><i class="fa fa-close"></i></a>
                </li>
            </ul>
        </div>
        <div class="body">
            <div class="new_timeline">
                <div class="header">
                    <div class="color-overlay">
                        <div class="day-number">8</div>
                        <div class="date-right">
                        <div class="day-name">Monday</div>
                        <div class="month">February 2018</div>
                        </div>
                    </div>                                
                </div>
                <ul>
                    <li>
                        <div class="bullet pink"></div>
                        <div class="time">11am</div>
                        <div class="desc">
                            <h3>Attendance</h3>
                            <h4>Computer Class</h4>
                        </div>
                    </li>
                    <li>
                        <div class="bullet green"></div>
                        <div class="time">12pm</div>
                        <div class="desc">
                            <h3>Design Team</h3>
                            <h4>Hangouts</h4>
                            <ul class="list-unstyled team-info margin-0 p-t-5">                                            
                                <li><img src="http://via.placeholder.com/35x35" alt="Avatar"></li>
                                <li><img src="http://via.placeholder.com/35x35" alt="Avatar"></li>
                                <li><img src="http://via.placeholder.com/35x35" alt="Avatar"></li>
                                <li><img src="http://via.placeholder.com/35x35" alt="Avatar"></li>                                            
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="bullet orange"></div>
                        <div class="time">1:30pm</div>
                        <div class="desc">
                            <h3>Lunch Break</h3>
                        </div>
                    </li>
                    <li>
                        <div class="bullet green"></div>
                        <div class="time">2pm</div>
                        <div class="desc">
                            <h3>Finish</h3>
                            <h4>Go to Home</h4>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name: 'Timeline',
}
</script>
<style scoped>
</style>