<template>
   <nav class="navbar navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-btn">
                <button type="button" class="btn-toggle-offcanvas"><i class="lnr lnr-menu fa fa-bars" v-on:click="toggleSideMenu()"></i></button>
            </div>

            <div class="navbar-brand">
               <router-link to="/dashboard/index" v-if="toggleSidebarTheme == ''"><img src="../../../assets/logo.svg" alt="Lucid Logo" class="img-responsive logo"></router-link>
               <router-link to="/dashboard/index" v-if="toggleSidebarTheme == 'full-dark'"><img src="../../../assets/logo-white.svg" alt="Lucid Logo" class="img-responsive logo"></router-link>                 
            </div>
            
            <div class="navbar-right">
                <form id="navbar-search" class="navbar-form search-form">
                    <input value="" class="form-control" placeholder="Search here..." type="text">
                    <button type="button" class="btn btn-default"><i class="icon-magnifier"></i></button>
                </form>                

                <div id="navbar-menu">
                    <ul class="nav navbar-nav">
                        <li>
                            <router-link to="/file-manager/file-documents" class="icon-menu d-none d-sm-block d-md-none d-lg-block"><i class="fa fa-folder-open-o"></i></router-link>
                        </li>
                        <li>
                            <router-link to="/app/app-calendar" class="icon-menu d-none d-sm-block d-md-none d-lg-block"><i class="icon-calendar"></i></router-link>
                        </li>
                        <li>
                            <router-link to="/app/app-chat" class="icon-menu d-none d-sm-block"><i class="icon-bubbles"></i></router-link>
                        </li>
                        <li>
                            <router-link to="/app/app-inbox" class="icon-menu d-none d-sm-block"><i class="icon-envelope"></i><span class="notification-dot"></span></router-link>
                        </li>
                        <li class="dropdown"  v-bind:class="{ 'show': notificationMenu}"  @click="notificationMenu = !notificationMenu" v-click-outside="notificationOutside">
                            <a href="javascript:void(0);" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                                <i class="icon-bell"></i>
                                <span class="notification-dot"></span>
                            </a>
                            <ul class="dropdown-menu notifications" v-bind:class="{ 'show': notificationMenu}" :style="notificationMenu ? 'top: 100%;' : 'top: 80%;'">
                                <li class="header"><strong>You have 4 new Notifications</strong></li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <div class="media-left">
                                                <i class="icon-info text-warning"></i>
                                            </div>
                                            <div class="media-body">
                                                <p class="text">Campaign <strong>Holiday Sale</strong> is nearly reach budget limit.</p>
                                                <span class="timestamp">10:00 AM Today</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>                               
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <div class="media-left">
                                                <i class="icon-like text-success"></i>
                                            </div>
                                            <div class="media-body">
                                                <p class="text">Your New Campaign <strong>Holiday Sale</strong> is approved.</p>
                                                <span class="timestamp">11:30 AM Today</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                 <li>
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <div class="media-left">
                                                <i class="icon-pie-chart text-info"></i>
                                            </div>
                                            <div class="media-body">
                                                <p class="text">Website visits from Twitter is 27% higher than last week.</p>
                                                <span class="timestamp">04:00 PM Today</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <div class="media-left">
                                                <i class="icon-info text-danger"></i>
                                            </div>
                                            <div class="media-body">
                                                <p class="text">Error on website analytics configurations</p>
                                                <span class="timestamp">Yesterday</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="footer"><a href="javascript:void(0);" class="more">See all notifications</a></li>
                            </ul>
                        </li>
                        <li class="dropdown" v-bind:class="{ 'show': dropActive}"  @click="dropActive = !dropActive" v-click-outside="outside">
                            <a href="javascript:void(0);" class="dropdown-toggle icon-menu" data-toggle="dropdown"><i class="icon-equalizer"></i></a>
                            <ul class="dropdown-menu user-menu menu-icon" v-bind:class="{ 'show': dropActive}" :style="dropActive ? 'top: 100%;' : 'top: 80%;'">
                                <li class="menu-heading">ACCOUNT SETTINGS</li>
                                <li><a href="javascript:void(0);"><i class="icon-note"></i> <span>Basic</span></a></li>
                                <li><a href="javascript:void(0);"><i class="icon-equalizer"></i> <span>Preferences</span></a></li>
                                <li><a href="javascript:void(0);"><i class="icon-lock"></i> <span>Privacy</span></a></li>
                                <li><a href="javascript:void(0);"><i class="icon-bell"></i> <span>Notifications</span></a></li>
                                <li class="menu-heading">BILLING</li>
                                <li><a href="javascript:void(0);"><i class="icon-credit-card"></i> <span>Payments</span></a></li>
                                <li><a href="javascript:void(0);"><i class="icon-printer"></i> <span>Invoices</span></a></li>                                
                                <li><a href="javascript:void(0);"><i class="icon-refresh"></i> <span>Renewals</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <router-link to="/authentication/page-login" class="icon-menu"><i class="icon-login"></i></router-link>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</template>

<script>
export default {
    name: 'HeaderComponent',
    methods:{
        outside: function() {
           this.dropActive = false
        },
        notificationOutside: function() {
           this.notificationMenu = false
        },
        toggleSideMenu: function () {
            document.body.classList.toggle('offcanvas-active')
        }
    },data() {
        return {
            dropActive: false,
            notificationMenu: false,
            toggleSidebarClass: false,
            toggleSidebarTheme: '',
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
    },mounted() {
        Event.$on('theme', (theme) => {
            this.toggleSidebarTheme = theme
        })
    }
}
</script>
<style scoped>

</style>
