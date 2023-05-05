<template>
    <div id="main-content" class="profilepage_1">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Light Gallery <small>All pictures taken from pexels.com</small></h2>
                        </div>
                        <div class="body">
                            <div id="aniimated-thumbnials" class="list-unstyled row clearfix">                                
                                <div class="col-lg-4 col-md-6 col-sm-12 m-b-30" v-for="(image, i) in images" :key="i" @click="index = i"> 
                                    <a><img class="img-fluid img-thumbnail" :src="image" alt=""></a> 
                                </div>
                                <vue-gallery-slideshow :images="images" :index="index" @close="index = null"></vue-gallery-slideshow>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Video Gallery <small>All pictures taken from pexels.com</small></h2>
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-6 col-sm-12 m-b-30" id="video-gallery">
                                    <a href="https://www.youtube.com/watch?v=D0a0aNqTehM" target="_blank">
                                        <img class="img-fluid img-thumbnail"  alt="">
                                    </a>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import BreadCrumb from '@/components/BreadCrumb'
import VueGallerySlideshow from 'vue-gallery-slideshow';

export default {
    name:'GalleryComponent',
    components: {
        BreadCrumb,
        VueGallerySlideshow
    },data (){
        return{
            images: [
                require(`../../../assets/image-gallery/1.jpg`),
                require(`../../../assets/image-gallery/2.jpg`),
                require(`../../../assets/image-gallery/3.jpg`),
                require(`../../../assets/image-gallery/4.jpg`),
                require(`../../../assets/image-gallery/5.jpg`),
                require(`../../../assets/image-gallery/6.jpg`),
                require(`../../../assets/image-gallery/7.jpg`),
                require(`../../../assets/image-gallery/8.jpg`),
                require(`../../../assets/image-gallery/9.jpg`),
                require(`../../../assets/image-gallery/10.jpg`),
                require(`../../../assets/image-gallery/11.jpg`),
                require(`../../../assets/image-gallery/12.jpg`),
                require(`../../../assets/image-gallery/13.jpg`),
                require(`../../../assets/image-gallery/14.jpg`),
                require(`../../../assets/image-gallery/15.jpg`),
            ],
    index: null
        }
    }
}
</script>
<style lang="scss">
.vgs__container {
    top: 100px !important;
}
</style>