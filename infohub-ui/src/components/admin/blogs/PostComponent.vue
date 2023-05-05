<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                 <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="body">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Enter Blog title" />
                            </div>
                            <select class="form-control show-tick">
                                <option>Select Category</option>
                                <option>Web Design</option>
                                <option>Photography</option>
                                <option>Technology</option>
                                <option>Lifestyle</option>
                                <option>Sports</option>
                            </select>
                            <div class="form-group m-t-20 m-b-20">
                                <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                                <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
                            </div>
                            <div class="summernote">
                                <vue-editor v-model="content"></vue-editor>
                            </div>
                            <button type="button" class="btn btn-block btn-primary m-t-20">Post</button>
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
    name:'PostComponent',
    components: {
        VueEditor,
        BreadCrumb
    },data() {
        return {
            content: "<h3>hi,</h3> <h4>we are Wrraptheme</h4> <p></p>"
        };
    }
}
</script>
<style scoped>

</style>