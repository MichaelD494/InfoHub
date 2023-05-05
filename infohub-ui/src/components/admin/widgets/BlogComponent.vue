<template>
     <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-6 col-md-12">
                    <div class="card single_post" v-for="(list, index) in listDetail" :key="index">
                        <blog-list
                            :img_src = "list.img_src"
                            :title = "list.title"
                            :title_details = "list.title_details"
                            :btn_contain = "list.btn_contain"
                            :sub_details = "list.status"
                        ></blog-list>
                    </div>    
                    <replay-form></replay-form>
                </div>

                <div class="col-lg-6 col-md-12">
                    <new-post></new-post>
                    <single-post></single-post>                 
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-8 col-md-12">
                    <blog-comments></blog-comments>
                </div>
                <div class="col-lg-4 col-md-12">
                    <categories-clouds></categories-clouds>
                    <email-newsletter></email-newsletter>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-4 col-md-12">
                    <social-counter></social-counter>
                    <instagram-post></instagram-post>
                    <profile></profile>
                </div>
                <div class="col-lg-8 col-md-12">
                    <search></search>
                    <post-carousel></post-carousel>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import BreadCrumb from '@/components/BreadCrumb'
import BlogLists from '@/components/core/BlogLists.vue'
import ReplyForm from '@/components/core/ReplyForm.vue'
import BlogComments from '@/components/core/BlogComments.vue'
import CategoriesClouds from '@/components/core/CategoriesClouds.vue'
import InstagramPost from '@/components/core/InstagramPost.vue'
import SocialCounter from '@/components/core/SocialCounter.vue'
import Profile from '@/components/core/Profile.vue'
import EmailNewsletter from '@/components/core/EmailNewsletter.vue'
import Search from '@/components/core/Search.vue'
import PostCarousel from '@/components/core/PostCarousel.vue'
import NewPost from '@/components/core/NewPost.vue'
import SinglePost from '@/components/core/SinglePost.vue'

export default {
    name: 'BlogComponent',
    components: {
        BreadCrumb,
        'blog-list': BlogLists,
        'replay-form': ReplyForm,
        'blog-comments': BlogComments,
        'categories-clouds': CategoriesClouds,
        'instagram-post': InstagramPost,
        'social-counter': SocialCounter,
        'profile': Profile,
        'email-newsletter':EmailNewsletter,
        'search':Search,
        'post-carousel':PostCarousel,
        'new-post':NewPost,
        'single-post':SinglePost,
    },data() {
        return {
            listDetail:
            [
                {
                    img_src: require(`../../../assets/blog/blog-page-1.jpg`),
                    title: "All photographs are accurate",
                    title_details: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal',
                    btn_contain:"Continue Reading",
                    status:[
                        {
                            url:"javascript:void(0);",
                            sub_title:"General",
                        },
                        {
                            url: "javascript:void(0);",
                            sub_title: "28",
                        },
                        {
                            url: "javascript:void(0);",
                            sub_title: "128",
                        }
                    ]
                },
            ], 
        }
    },methods: {
      
    }
}
</script>
<style scoped>
</style>