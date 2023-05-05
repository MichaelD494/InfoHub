<template>
    <div class="vertical-align-wrap">
        <div class="vertical-align-middle maintenance">

        <div class="text-center">
            <article>
                <h1>We&rsquo;ll be back soon!</h1>
                <div>
                    <p>Sorry for the inconvenience<br> but we&rsquo;re performing some maintenance at the moment.<br> If you need to you can always <a href="mailto:#">contact us</a>, otherwise we&rsquo;ll be back online shortly!</p>
                    <p>&mdash; The Team</p>
                </div>
            </article>
            <div class="margin-top-30">
                <a @click="$router.go(-1)" class="btn btn-default mr-1"><i class="fa fa-arrow-left"></i> <span>Go Back</span></a>
                <router-link to="/dashboard/index" class="btn btn-info"><i class="fa fa-home"></i> <span>Home</span></router-link>
            </div>
        </div>
        </div>
    </div>
</template>
<script>
export default {
    name:'MaintananceComponent',
    components: {
       
    }
}
</script>
<style>

</style>