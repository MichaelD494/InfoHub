<template>
   <div class="vertical-align-wrap">
        <div class="vertical-align-middle auth-main">
            <div class="auth-box">
                <div class="top">
                    <img src="../../../assets/logo-white.svg" alt="Lucid">
                </div>
                <div class="card">
                    <div class="header">
                        <h3>
                            <span class="clearfix title">
                                <span class="number">500</span> <br>
                                <span>Internal Server Error</span>
                            </span>
                        </h3>
                    </div>
                    <div class="body">
                        <p>Apparently we're experiencing an error. But don't worry, we will solve it shortly.
                            <br>Please try after some time.</p>
                        <p> <router-link to="/dashboard/index" class="btn btn-primary mr-1"> <i class="fa fa-home"></i> <span>Home</span></router-link></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name:'FiveZeroZeroComponent',
    methods: {
       
    }
}
</script>
<style scoped>

</style>