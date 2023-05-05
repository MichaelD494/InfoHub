<template>
    <div class="card">
        <div class="header">
            <h2>Followers</h2>
        </div>
        <div class="body">
            <form>
                <div class="input-group m-b-20">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="icon-magnifier"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="Search...">
                </div>
            </form>
            <ul class="right_chat list-unstyled">
                <li class="online">
                    <a href="javascript:void(0);">
                        <div class="media">
                            <img class="media-object " src="./../../assets/xs/avatar4.jpg" alt="">
                            <div class="media-body">
                                <span class="name">Chris Fox</span>
                                <span class="message">Designer, Blogger</span>
                                <span class="badge badge-outline status"></span>
                            </div>
                        </div>
                    </a>                            
                </li>
                <li class="online">
                    <a href="javascript:void(0);">
                        <div class="media">
                            <img class="media-object " src="./../../assets/xs/avatar5.jpg" alt="">
                            <div class="media-body">
                                <span class="name">Joge Lucky</span>
                                <span class="message">Java Developer</span>
                                <span class="badge badge-outline status"></span>
                            </div>
                        </div>
                    </a>                            
                </li>
                <li class="offline">
                    <a href="javascript:void(0);">
                        <div class="media">
                            <img class="media-object " src="./../../assets/xs/avatar2.jpg" alt="">
                            <div class="media-body">
                                <span class="name">Isabella</span>
                                <span class="message">CEO, Thememakker</span>
                                <span class="badge badge-outline status"></span>
                            </div>
                        </div>
                    </a>                            
                </li>
                <li class="offline">
                    <a href="javascript:void(0);">
                        <div class="media">
                            <img class="media-object " src="./../../assets/xs/avatar1.jpg" alt="">
                            <div class="media-body">
                                <span class="name">Folisise Chosielie</span>
                                <span class="message">Art director, Movie Cut</span>
                                <span class="badge badge-outline status"></span>
                            </div>
                        </div>
                    </a>                            
                </li>
                <li class="online">
                    <a href="javascript:void(0);">
                        <div class="media">
                            <img class="media-object " src="./../../assets/xs/avatar3.jpg" alt="">
                            <div class="media-body">
                                <span class="name">Alexander</span>
                                <span class="message">Writter, Mag Editor</span>
                                <span class="badge badge-outline status"></span>
                            </div>
                        </div>
                    </a>                            
                </li>                        
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    name: 'Followers',
}
</script>
<style scoped>
</style>