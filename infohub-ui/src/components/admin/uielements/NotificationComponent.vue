<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Message Context</h2>
                        </div>
                         <div class="body">
                            <button class="btn btn-primary btn-toastr mr-1"  @click="showInfo()">General Info</button>
                            <button class="btn btn-success btn-toastr mr-1"  @click="showSuccess()">Success Info</button>
                            <button class="btn btn-warning btn-toastr mr-1"  @click="showWarning()">Warning Info</button>
                            <button class="btn btn-danger btn-toastr mr-1"   @click="showError()">Error Info</button>
                        </div>
                    </div>
                </div>
            </div>
            
             <div class="row clealfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Popup Positions</h2>
                        </div>
                        <div class="body">
                            <button class="btn btn-default mr-1" @click="showBottomRight()">Bottom Right</button>
                            <button class="btn btn-default mr-1" @click="showBottomLeft()">Bottom Left</button>
                            <button class="btn btn-default mr-1" @click="showTopLeft()">Top Left</button>
                            <button class="btn btn-default mr-1" @click="showTopRight()">Top Right</button>
                            <button class="btn btn-default mr-1" @click="showTopCenter()">Top Center</button>
                            <button class="btn btn-default mr-1" @click="showBottomCenter()">Bottom Center</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import BreadCrumb from '@/components/BreadCrumb'
export default {
    name:'NotificationComponent',
    components: {
        BreadCrumb,
    },methods: {
        showInfo() {
          this.$toast.open({
            message: "This is general theme info",
            type: "info",
            duration: 3000,
            position: 'bottom-right',
            dismissible: true
          })
        },
        showSuccess() {
          this.$toast.open({
            message: "This is Success theme info",
            type: "success",
            duration: 3000,
            position: 'bottom-right',
            dismissible: true
          })
        },
        showWarning() {
          this.$toast.open({
            message: "This is Warning theme info",
            type: "warning",
            duration: 3000,
            position: 'bottom-right',
            dismissible: true
          })
        },
        showError() {
          this.$toast.open({
            message: "This is Error theme info",
            type: "error",
            duration: 3000,
            position: 'bottom-right',
            dismissible: true
          })
        },
        showBottomRight() {
          this.$toast.open({
            message: "Hi, I'm here",
            type: "info",
            duration: 1000,
            position: 'bottom-right',
            dismissible: true
          })
        },
        showBottomLeft() {
          this.$toast.open({
            message: "Hi, I'm here",
            type: "info",
            duration: 1000,
            position: 'bottom-left',
            dismissible: true
          })
        },
        showTopLeft() {
          this.$toast.open({
            message: "Hi, I'm here",
            type: "info",
            duration: 1000,
            position: 'top-left',
            dismissible: true
          })
        },
        showTopRight() {
          this.$toast.open({
            message: "Hi, I'm here",
            type: "info",
            duration: 1000,
            position: 'top-right',
            dismissible: true
          })
        },
        showTopCenter() {
          this.$toast.open({
            message: "Hi, I'm here",
            type: "info",
            duration: 1000,
            position: 'top',
            dismissible: true
          })
        },
        showBottomCenter() {
          this.$toast.open({
            message: "Hi, I'm here",
            type: "info",
            duration: 1000,
            position: 'bottom',
            dismissible: true
          })
        },
  }   
}
</script>
<style scoped>

</style>