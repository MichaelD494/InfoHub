<template>
    <div id="main-content" class="blog-page">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-8 col-md-12 left-box">
                    <div class="card single_post" v-for="(list, index) in listDetail" :key="index">
                        <blog-list
                            :img_src = "list.img_src"
                            :title = "list.title"
                            :title_details = "list.title_details"
                            :btn_contain = "list.btn_contain"
                            :sub_details = "list.status"
                        ></blog-list>
                    </div>                   
                    <ul class="pagination pagination-primary">
                        <li class="page-item"><a class="page-link" href="javascript:void(0);">Previous</a></li>
                        <li class="page-item active"><a class="page-link" href="javascript:void(0);">1</a></li>
                        <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
                        <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
                        <li class="page-item"><a class="page-link" href="javascript:void(0);">Next</a></li>
                    </ul>                
                </div>
                <div class="col-lg-4 col-md-12 right-box">
                    <search></search>
                    <categories-clouds></categories-clouds>
                    <popular-post></popular-post>
                    <instagram-post></instagram-post>
                    <email-newsletter></email-newsletter>
                </div>
            </div>

        </div>
    </div>
</template>
<script>
import BreadCrumb from '@/components/BreadCrumb'
import BlogLists from '@/components/core/BlogLists.vue'
import CategoriesClouds from '@/components/core/CategoriesClouds.vue'
import InstagramPost from '@/components/core/InstagramPost.vue'
import EmailNewsletter from '@/components/core/EmailNewsletter.vue'
import Search from '@/components/core/Search.vue'
import PopularPosts from '@/components/core/PopularPosts.vue'

export default {
    name:'ListComponent',
    components: {
        BreadCrumb,
        'blog-list': BlogLists,
        'categories-clouds': CategoriesClouds,
        'instagram-post': InstagramPost,
        'email-newsletter':EmailNewsletter,
        'search':Search,
        'popular-post':PopularPosts,
    },data (){
       return{
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
                {
                    img_src: require(`../../../assets/blog/blog-page-2.jpg`),
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
                {
                    img_src: require(`../../../assets/blog/blog-page-3.jpg`),
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
                {
                    img_src: require(`../../../assets/blog/blog-page-4.jpg`),
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
    }
}
</script>
<style scoped>

</style>