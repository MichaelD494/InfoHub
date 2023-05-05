<template>
    <div class="card single_post">
        <div class="body pb-0">
            <h3 class="m-t-0 m-b-5"><a href="blog-details.html">All photographs are accurate. None of them is the truth</a></h3>
            <ul class="meta">
                <li><a href="javascript:void(0);"><i class="icon-user text-primary"></i>Posted By: John Smith</a></li>
                <li><a href="javascript:void(0);"><i class="icon-tag text-success"></i>Photography</a></li>
                <li><a href="javascript:void(0);"><i class="icon-bubbles text-warning"></i>Comments: 3</a></li>
            </ul>
        </div>                    
        <div class="body">
            <div class="img-post m-b-15">
                <carousel :per-page="1" :loop="true" :mouse-drag="true" :paginationEnabled="false">
                    <slide>
                        <img class="d-block img-fluid" src="./../../assets/blog/blog-page-1.jpg" alt="First slide">
                    </slide>
                    <slide>
                        <img class="d-block img-fluid" src="./../../assets/blog/blog-page-2.jpg" alt="Second slide">
                    </slide>
                    <slide>
                        <img class="d-block img-fluid" src="./../../assets/blog/blog-page-3.jpg" alt="Third slide">
                    </slide>
                </carousel>
            </div>
            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal</p>
             <router-link to="/blogs/blog-details" class="btn btn-info m-t-20">Read More</router-link>                      
        </div>
    </div>
</template>
<script>
export default {
    name:'PostCarousel'
}
</script>
<style scoped>

</style>