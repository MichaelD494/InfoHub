<template>
    <div id="main-content" class="file_manager">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-3 col-md-4 col-sm-12" v-for="(image,index) in imageDetail" :key="index" >
                    <div class="card">
                        <div class="file">
                            <a href="javascript:void(0);">
                                <div class="hover">
                                    <button type="button" class="btn btn-icon btn-danger">
                                        <i class="fa fa-trash"></i>
                                    </button>
                                </div>
                                <div class="image">
                                    <img :src="`${image.img_src}`"  alt="img" class="img-fluid">
                                </div>
                                <div class="file-name">
                                    <p class="m-b-5 text-muted">{{image.img_name}}</p>
                                    <small>Size: {{image.size }}<span class="date text-muted">{{image.date }}</span></small>
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
    name:'FileImageComponent',
    components: {
       BreadCrumb,
    },data (){
       return{
          imageDetail:
            [
                {
                    img_src: require(`../../../assets/image-gallery/5.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: '2MB',
                    date: "Dec 08, 2017",
                },
                {
                    img_src: require(`../../../assets/image-gallery/8.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Oct 11, 2016",
                },
                {
                    img_src: require(`../../../assets/image-gallery/9.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Dec 08, 2017",
                },
                {
                    img_src: require(`../../../assets/image-gallery/3.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Dec 08, 2017",
                },
                {
                    img_src: require(`../../../assets/image-gallery/4.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Oct 11, 2016",
                },
                {
                    img_src: require(`../../../assets/image-gallery/5.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Oct 11, 2016",
                },
                {
                    img_src: require(`../../../assets/image-gallery/1.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Dec 08, 2017",
                },
                {
                    img_src: require(`../../../assets/image-gallery/2.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Oct 11, 2016",
                },
                 {
                    img_src: require(`../../../assets/image-gallery/10.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Oct 11, 2016",
                },
                {
                    img_src: require(`../../../assets/image-gallery/11.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Oct 11, 2016",
                },
                {
                    img_src: require(`../../../assets/image-gallery/12.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Oct 11, 2016",
                },
                {
                    img_src: require(`../../../assets/image-gallery/13.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Oct 11, 2016",
                },
                {
                    img_src: require(`../../../assets/image-gallery/14.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Oct 11, 2016",
                },
                {
                    img_src: require(`../../../assets/image-gallery/15.jpg`),
                    img_name: 'img21545ds.jpg',
                    size: "2MB",
                    date: "Oct 11, 2016",
                },
            ],
        }
    } 
}
</script>
<style scoped>

</style>