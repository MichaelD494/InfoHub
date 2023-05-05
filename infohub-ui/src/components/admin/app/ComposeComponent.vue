<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
               <bread-crumb></bread-crumb>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="body">
                            <form>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="To">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Subject">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="CC">
                                </div>
                            </form>
                            <hr>
                            <div>
                                <vue-editor v-model="content"></vue-editor>
                            </div>
                            <div class="m-t-30">
                                <button type="button" class="btn btn-success mr-1">Send Message</button>
                                <button type="button" class="btn btn-secondary mr-1">Draft</button>
                                <router-link to="/app/app-inbox" class="btn btn-outline-secondary mr-1">Cancel</router-link>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import  {VueEditor}  from "vue2-editor"
import BreadCrumb from '@/components/BreadCrumb'
export default {
    name:'ComposeComponent',
    components: {
        VueEditor,
        BreadCrumb
    },
    data() {
        return {
        content: "Hello there,<br/><p>The toolbar can be customized and it also supports various callbacks such as <code>oninit</code>, <code>onfocus</code>, <code>onpaste</code> and many more.</p><p>Please try <b>paste some texts</b> here</p>"
        };
    }
}
</script>
<style scoped>

</style>