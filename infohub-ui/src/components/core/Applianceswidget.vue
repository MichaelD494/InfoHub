<template>
    <div class="card">
        <div class="header">
            <h2>{{title}}</h2>
            <ul class="header-dropdown m-r--5">
                <li class="dropdown" v-bind:class="{ 'show': cardToggle}"  @click="cardToggle = !cardToggle" v-click-outside="cardToggleOutside">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                        role="button" aria-haspopup="true" aria-expanded="false"> <i
                            class="zmdi zmdi-more-vert"></i> </a>
                    <ul class="dropdown-menu pull-right" v-bind:class="{ 'show': cardToggle }">
                        <li><a href="javascript:void(0);" @click="allOn()">All On</a></li>
                        <li><a href="javascript:void(0);" @click="allOff()">All Off</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="body">
            <ul class="list-unstyled basic-list">
                <li v-for="detail in sub_details" :key="detail.sub_title" :class="[!detail.status && !detail.error ? 'text-warning' : null, detail.error ? 'text-danger' : null]">
                    {{detail.sub_title}}
                     <span v-if="detail.error">{{detail.errorMessage}}</span>
                    <span class="badge" :class="!detail.status || detail.error ? 'd-none' : ''" @click="detail.status = !detail.status">Off</span>
                    <span class="badge" :class="detail.status || detail.error ? 'd-none' : ''"  @click="detail.status = !detail.status">On</span>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    name:'Applianceswidget',
    props: {
        title: [String,Object],
        sub_details:Array,
    },
    methods:{
        allOn(){
            this.sub_details.forEach((sub_details,index) => {
                this.sub_details[index].status = false; 
            });
        },
        allOff(){
            this.sub_details.forEach((sub_details,index) => {
                this.sub_details[index].status = true; 
            });
        },
        cardToggleOutside: function() {
            this.cardToggle = false
        },
    }, data() {
      return {
        cardToggle:false,
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