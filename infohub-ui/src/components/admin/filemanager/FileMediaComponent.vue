<template>
    <div id="main-content" class="file_manager">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
           <div class="row clearfix">                
                <div class="col-lg-3 col-md-4 col-sm-12" v-for="(media,index) in mediaDetail" :key="index">
                    <div class="card">
                        <div class="file">
                            <a href="javascript:void(0);">
                                <div class="hover">
                                    <button type="button" class="btn btn-icon btn-danger">
                                        <i class="fa fa-trash"></i>
                                    </button>
                                </div>
                                <div class="icon">
                                    <i :class="`${media.class_nm}`"></i>
                                </div>
                                <div class="file-name">
                                    <p class="m-b-5 text-muted">{{ media.file_name }}</p>
                                    <small>Size: {{ media.Size }} <span class="date text-muted"> {{ media.date }}</span></small>
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
    name:'FileMediaComponent',
    components: {
       BreadCrumb,
    },data (){
       return{
           mediaDetail:
            [
                {
                    class_nm:'fa fa-image',
                    file_name: 'hellonew.mkv',
                    Size: '720MB',
                    date: "Dec 08, 2017",
                },
                {
                    class_nm: 'fa fa-youtube-square text-danger',
                    file_name: 'ee Le Zara Song.mpg4',
                    Size: "32MB",
                    date: "Oct 11, 2016",
                },
                {
                    class_nm:'fa fa-image',
                    file_name: 'hellonew.mkv',
                    Size: "720MB",
                    date: "Dec 08, 2017",
                },
                {
                    class_nm: 'fa fa-image',
                    file_name: 'hellonew.mkv',
                    Size: "720MB",
                    date: "Dec 08, 2017",
                },
                {
                    class_nm: 'fa fa-youtube-square text-danger',
                    file_name: 'Jee Le Zara Song.mpg4',
                    Size: "32MB",
                    date: "Oct 11, 2016",
                },
                {
                    class_nm: 'fa fa-youtube-square text-danger',
                    file_name: 'Jee Le Zara Song.mpg4',
                    Size: "32MB",
                    date: "Oct 11, 2016",
                },
                {
                    class_nm: 'fa fa-image',
                    file_name: 'hellonew.mkv',
                    Size: "720MB",
                    date: "Dec 08, 2017",
                },
                {
                    class_nm: 'fa fa-youtube-square text-danger',
                    file_name: 'Jee Le Zara Song.mpg4',
                    Size: "32MB",
                    date: "Oct 11, 2016",
                },
            ],
        }
    } 
}
</script>
<style scoped>

</style>