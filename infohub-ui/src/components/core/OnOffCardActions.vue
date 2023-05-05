<template>
    <ul class="header-dropdown m-r--5">
        <li class="dropdown"  v-bind:class="{ 'show': cardToggle}"  @click="cardToggle = !cardToggle" v-click-outside="cardToggleOutside"> 
            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more-vert"></i> </a>
             <ul class="dropdown-menu dropdown-menu-right" v-bind:class="{ 'show': cardToggle }">
                <li v-for="action in actions" :key="action.key"><a :href="`${action.url}`">{{action.key}}</a></li>
            </ul>
        </li>
    </ul>
</template>
<script>
export default {
    name:'OnOffCardActions',
    methods:{
        cardToggleOutside: function() {
            this.cardToggle = false
        },
    }, data() {
      return {
        cardToggle:false,
        actions: [
                {key:"All On",url: "javascript:void(0);"},
                {key:"All Off",url: "javascript:void(0);"},
            ],
      }
    },directives: {
        'click-outside': {
            bind: function(el, binding) {
                // Define Handler and cache it on the element
                const bubble = binding.modifiers.bubble
                const handler = (e) => {
                if (bubble || (!el.contains(e.target) && el !== e.target)) {
                    binding.value(e)
                }
                }
                el.__vueClickOutside__ = handler

                // add Event Listeners
                document.addEventListener('click', handler)
            },
        }
    }
}
</script>
<style scoped>

</style>