<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                 <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-4 col-md-12">
                    <feeds></feeds>
                    <subscribe></subscribe>
                    <followers></followers>
                    <chat></chat>
                    <design-team></design-team>
                    <browser-stat></browser-stat>
                    <stats-list></stats-list>
                </div>

                <div class="col-lg-4 col-md-12">
                    <time-line></time-line>
                    <list></list>
                    <twitter-feed></twitter-feed>
                    <ultima></ultima>
                </div>

                <div class="col-lg-4 col-md-12">
                    <comments></comments>
                    <to-do-list></to-do-list>
                    <referrals></referrals>
                    <pricing></pricing>
                    <invoice></invoice>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import BreadCrumb from '@/components/BreadCrumb'
import LucidFeeds from '@/components/core/LucidFeeds.vue'
import Timeline from '@/components/core/Timeline.vue'
import Comments from '@/components/core/Comments.vue'
import Subscribe from '@/components/core/Subscribe.vue'
import InboxList from '@/components/core/InboxList.vue'
import ToDoList from '@/components/core/ToDoList.vue'
import Followers from '@/components/core/Followers.vue'
import TwitterFeed from '@/components/core/TwitterFeed.vue'
import AnaliticalReferrals from '@/components/core/AnaliticalReferrals.vue'
import AnaliticalChat from '@/components/core/AnaliticalChat.vue'
import Ultima from '@/components/core/Ultima.vue'
import Pricing from '@/components/core/Pricing.vue'
import DesignTeam from '@/components/core/DesignTeam.vue'
import BrowserStat from '@/components/core/BrowserStat.vue'
import Invoice from '@/components/core/Invoice.vue'
import StatsList from '@/components/core/StatsList.vue'

export default {
    name: 'DataComponent',
    components: {
       BreadCrumb,
        'feeds': LucidFeeds,
        'time-line': Timeline,
        'comments': Comments,
        'subscribe': Subscribe,
        'list': InboxList,
        'to-do-list': ToDoList,
        'followers': Followers,
        'twitter-feed': TwitterFeed,
        'referrals': AnaliticalReferrals,
        'chat': AnaliticalChat,
        'ultima': Ultima,
        'pricing': Pricing,
        'design-team': DesignTeam,
        'browser-stat': BrowserStat,
        'invoice': Invoice,
        'stats-list': StatsList
    },methods: {
      
    }
}
</script>
<style scoped>

</style>