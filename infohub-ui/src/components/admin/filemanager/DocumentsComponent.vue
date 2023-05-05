<template>
    <div id="main-content" class="file_manager">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-3 col-md-4 col-sm-12" v-for="(document,index) in documentsDetail" :key="index" >
                    <div class="card">
                        <div class="file">
                            <a href="javascript:void(0);">
                                <div class="hover">
                                    <button type="button" class="btn btn-icon btn-danger">
                                        <i class="fa fa-trash"></i>
                                    </button>
                                </div>
                                <div class="icon">
                                    <i :class="`${document.class_nm}`"></i>
                                </div>
                                <div class="file-name">
                                    <p class="m-b-5 text-muted">{{ document.file_name }}</p>
                                    <small>Size: {{ document.Size }} <span class="date text-muted"> {{ document.date }}</span></small>
                                </div>
                            </a>
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
    name:'DocumentsComponent',
    components: {
       BreadCrumb,
    },data (){
       return{
            documentsDetail:
            [
                {
                    class_nm:'fa fa-file text-info',
                    file_name: 'Document_2017.doc',
                    Size: '42KB',
                    date:"Nov 02, 2017",
                },
                {
                    class_nm:'fa fa-file text-info',
                    file_name: 'Document_2017.doc',
                    Size:"89KB",
                    date:"Dec 15, 2017",
                },
                {
                    class_nm:'fa fa-file text-info',
                    file_name: 'Document_2017.doc',
                    Size:"89KB",
                    date:"Dec 15, 2017",
                },
                {
                    class_nm:'fa fa-bar-chart text-warning',
                    file_name: 'Report2016.xls',
                    Size:"68KB",
                    date:"Dec 12, 2016",
                },
                {
                    class_nm:'fa fa-bar-chart text-warning',
                    file_name: 'Report2016.xls',
                    Size:"68KB",
                    date:"Dec 12, 2016",
                },
                {
                    class_nm:'fa fa-file text-success',
                    file_name: 'asdf hhkj.pdf',
                    Size:"68KB",
                    date:"Aug 18, 2017",
                },
                {
                    class_nm:'fa fa-file text-success',
                    file_name: 'asdf hhkj.pdf',
                    Size:"38KB",
                    date:"Aug 18, 2017",
                },
                {
                    class_nm:'fa fa-file text-success',
                    file_name: 'asdf hhkj.pdf',
                    Size:"18KB",
                    date:">Aug 18, 2017",
                },
                {
                    class_nm:'fa fa-file text-success',
                    file_name: 'asdf hhkj.pdf',
                    Size:"78KB",
                    date:"Aug 18, 2017",
                },
                {
                    class_nm:'fa fa-bar-chart text-warning',
                    file_name: 'asdf hhkj.pdf',
                    Size:"68KB",
                    date:"Dec 12, 2016",
                },
                {
                    class_nm:'fa fa-bar-chart text-warning',
                    file_name: 'asdf hhkj.pdf',
                    Size:"&&MB",
                    date:"Jan 24, 2016",
                },
                 {
                    class_nm:'fa fa-file text-info',
                    file_name: 'Document_2017.doc',
                    Size: '42KB',
                    date:"Nov 02, 2017",
                },
                {
                    class_nm:'fa fa-file text-info',
                    file_name: 'Document_2017.doc',
                    Size:"89KB",
                    date:"Dec 15, 2017",
                },
                {
                    class_nm:'fa fa-file text-info',
                    file_name: 'Document_2017.doc',
                    Size:"89KB",
                    date:"Dec 15, 2017",
                },
                {
                    class_nm:'fa fa-bar-chart text-warning',
                    file_name: 'Report2016.xls',
                    Size:"68KB",
                    date:"Dec 12, 2016",
                },
                {
                    class_nm:'fa fa-bar-chart text-warning',
                    file_name: 'asdf hhkj.pdf',
                    Size:"68KB",
                    date:"Dec 12, 2016",
                }, 
            ],
        }
    },methods: {
        
    }   
}
</script>
<style scoped>

</style>