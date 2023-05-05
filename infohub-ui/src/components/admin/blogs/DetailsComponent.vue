<template>
    <div id="main-content" class="blog-page">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-8 col-md-12 left-box">
                        <div class="card single_post">
                            <div class="body">
                                <div class="img-post">
                                    <img class="d-block img-fluid" src="../../../assets/blog/blog-page-1.jpg" alt="First slide">
                                </div>
                                <h3><router-link to="/blogs/blog-details">All photographs are accurate</router-link></h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                            </div>                        
                        </div>
                        <blog-comments></blog-comments>
                        <replay-form></replay-form>
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
import ReplyForm from '@/components/core/ReplyForm.vue'
import BlogComments from '@/components/core/BlogComments.vue'
import CategoriesClouds from '@/components/core/CategoriesClouds.vue'
import InstagramPost from '@/components/core/InstagramPost.vue'
import EmailNewsletter from '@/components/core/EmailNewsletter.vue'
import Search from '@/components/core/Search.vue'
import PopularPosts from '@/components/core/PopularPosts.vue'

export default {
    name:'DetailsComponent',
    components: {
        BreadCrumb,
        'replay-form': ReplyForm,
        'blog-comments': BlogComments,
        'categories-clouds': CategoriesClouds,
        'instagram-post': InstagramPost,
        'email-newsletter':EmailNewsletter,
        'search':Search,
        'popular-post':PopularPosts,
    },data (){
       return{
        }
    }
}
</script>
<style scoped>

</style>