<template>
   <div class="vertical-align-wrap">
        <div class="vertical-align-middle auth-main">
            <div class="auth-box">
                <div class="top">
                    <img src="../../../assets/logo-white.svg" alt="Lucid">
                </div>
                <div class="card">
                    <div class="header">
                        <p class="lead">Recover my password</p>
                    </div>
                    <div class="body">
                        <p>Please enter your email address below to receive instructions for resetting password.</p>
                        <form class="form-auth-small" v-on:submit.prevent="submit">
                            <div class="form-group">                                    
                                <input type="password" class="form-control" id="signup-password" placeholder="Password">
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block">RESET PASSWORD</button>
                            <div class="bottom">
                                <span class="helper-text">Know your password? <router-link to="/authentication/page-login">Login</router-link></span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name:'ForgotPasswordComponent',
    methods: {
        submit(e){
           this.$router.push({ path: '/authentication/page-login' })
             e.preventDefault()
            //...
        }
    }
}
</script>
<style scoped>

</style>