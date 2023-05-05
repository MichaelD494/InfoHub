<template> 
  <div id="wrapper">
    <div class="page-loader-wrapper" v-if="isLoading">
      <div class="loader">
          <div class="m-t-30"><img src="./assets/logo-icon.svg" width="48" height="48" alt="Lucid"></div>
          <p>Please wait...</p>        
      </div>
    </div> 
    <HeaderComponent v-if="!['login', 'register','lockscreen','fpassword','404','403','500','503','maintanance'].includes($route.name)" />
    <SidebarComponent  v-if="!['login', 'register','lockscreen','fpassword','404','403','500','503','maintanance'].includes($route.name)"/>
    <router-view></router-view>
  </div>
</template>
<script>
import HeaderComponent from './components/admin/layouts/HeaderComponent.vue'
import SidebarComponent from './components/admin/layouts/SidebarComponent.vue'

export default {
  name: 'App',
  components: {
    HeaderComponent,
    SidebarComponent
  },watch: {
    $route: {
      immediate: true, // also trigger handler on initial value
      handler() {
         if (this.$route.name === 'maintanance') {
            document.body.className = '';
          }else{
            document.body.className = 'theme-cyan';
          }
      }
    }   
  },methods:{
    
  },data (){
      return{
        isLoading: true,
      }
  },created(){
         this.interval = setInterval(() => {
            this.isLoading = false
        }, 3000);
    }
}
</script>
<style lang="scss">
  @import '../src/assets/vendor/bootstrap/css/bootstrap.min.css';
  @import '../src/assets/vendor/font-awesome/css/font-awesome.min.css';
  @import '../src/assets/scss/main.scss';
  @import '../src/assets/scss/color_skins.scss';
</style>
