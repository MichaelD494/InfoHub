<template>
     <div class="card">
        <div class="header">
            <h2>Referrals</h2>
             <card-actions></card-actions>
        </div>
        <div class="body">
            <ul class="list-unstyled list-referrals">
                <li>
                    <p><span class="value">2301</span><span class="text-muted float-right">visits from Facebook</span></p>
                    <div class="progress progress-xs progress-transparent custom-color-blue">
                        <div class="progress-bar color-blue" data-transitiongoal="87"></div>
                    </div>
                </li>
                <li>
                    <p><span class="value">2107</span><span class="text-muted float-right">visits from Twitter</span></p>
                    <div class="progress progress-xs progress-transparent custom-color-purple">
                        <div class="progress-bar color-purple" data-transitiongoal="34"></div>
                    </div>
                </li>                                
                <li>
                    <p><span class="value">2308</span><span class="text-muted float-right">visits from Search</span></p>
                    <div class="progress progress-xs progress-transparent custom-color-yellow">
                        <div class="progress-bar color-yellow" data-transitiongoal="54"></div>
                    </div>
                </li>
                <li>
                    <p><span class="value">1024</span><span class="text-muted float-right">visits from Affiliates</span></p>
                    <div class="progress progress-xs progress-transparent custom-color-green">
                        <div class="progress-bar color-green" data-transitiongoal="67"></div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
import CardActions from '@/components/core/CardActions.vue'
export default {
    name: 'AnaliticalReferrals',
     components: {
        'card-actions': CardActions,
    },
    props: {
        options: Object,
    },
}
</script>
<style scoped>
.color-blue{
    width: 87%;
}
.color-purple{
    width: 34%;
}
.color-yellow{
    width: 54%;
}
.color-green{
    width: 67%;
}
</style>